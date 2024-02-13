import 'package:flutter/material.dart';
import 'package:islami/components/heading_text.dart';
import 'package:islami/views/quran/item_sura_name.dart';
import 'package:islami/models/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuranTab extends StatefulWidget {
  QuranTab({super.key});

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Center(
            child: Image.asset('assets/images/qur2an_screen_logo.png'),
          ),
        ),
        Expanded(
          flex: 7,
          child: Stack(alignment: Alignment.center, children: [
            buildColumnContent(),
            Container(
              height: double.infinity,
              width: 3,
              color: const Color(0xffB7935F),
            ),
          ]),
        ),
      ],
    );
  }

  Widget buildColumnContent() {
    return Expanded(
      flex: 7,
      child: Column(
        children: [
          Container(
            height: 3,
            width: double.infinity,
            color: const Color(0xffB7935F),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: HeadingText(
                    text: AppLocalizations.of(context)!.verses_number,
                  ),
                ),
                Expanded(
                  child: HeadingText(
                    text: AppLocalizations.of(context)!.sura_name,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 3,
            width: double.infinity,
            color: const Color(0xffB7935F),
          ),
          Expanded(
            flex: 6,
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return Container(
                  height: 2,
                  width: double.infinity,
                  color: const Color(0xffB7935F),
                );
              },
              itemCount: Constants.suraNames.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          '${Constants.versesNumber[index]}',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'ElMessiri'),
                        ),
                      ),
                      Expanded(
                        child: ItemSuraName(
                          text: Constants.suraNames[index],
                          index: index,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
