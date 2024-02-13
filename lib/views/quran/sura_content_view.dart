import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/views/quran/item_sura_content.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class SuraContentView extends StatefulWidget {
  final String suraName;
  final int suraIndex;
  const SuraContentView(
      {super.key, required this.suraName, required this.suraIndex});

  @override
  State<SuraContentView> createState() => _SuraContentViewState();
}

class _SuraContentViewState extends State<SuraContentView> {
  List<String> suras = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadFile(widget.suraIndex);
  }

  // static const String routeName = 'sura_content_view';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/scaffold_background.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            widget.suraName,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontFamily: 'ElMessiri',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: suras.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : Container(
                margin: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.width * .08,
                    horizontal: MediaQuery.of(context).size.height * .03),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22)),
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return Container(
                      height: 2,
                      width: double.infinity,
                      color: const Color(0xffB7935F),
                    );
                  },
                  itemCount: suras.length,
                  itemBuilder: (context, index) {
                    return ItemSuraContent(
                      text: suras[index],
                      index: index,
                    );
                  },
                ),
              ),
      ),
    );
  }

  void loadFile(int index) async {
    String content =
        await rootBundle.loadString('assets/qouran/${index + 1}.txt');
    List<String> lines = content.split('\n');
    suras = lines;
    setState(() {});
  }
}
