import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/components/hadeath_content.dart';

class HadeathContentView extends StatefulWidget {
  HadeathContentView({super.key, required this.index});
  final int index;

  @override
  State<HadeathContentView> createState() => _HadeathContentViewState();
}

class _HadeathContentViewState extends State<HadeathContentView> {
  List<String> hadeth = [];
  @override
  void initState() {
    // TODO: implement initState

    loadFile(widget.index);
  }

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
              'الحديث رقم ${widget.index + 1} ',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontFamily: 'ElMessiri',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: hadeth.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : Container(
                  margin: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.width * .08,
                      horizontal: MediaQuery.of(context).size.height * .03),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22)),
                  child: ListView.builder(
                    itemCount: hadeth.length,
                    itemBuilder: (context, index) {
                      return HadeathContent(text: hadeth[index], index: index);
                    },
                  ),
                ),
        ));
  }

  void loadFile(int index) async {
    String content =
        await rootBundle.loadString('assets/hadeth/h${index + 1}.txt');
    List<String> lines = content.split('\n');
    hadeth = lines;
    setState(() {});
  }
}
