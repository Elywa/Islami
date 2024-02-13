import 'package:flutter/material.dart';
import 'package:islami/views/hadeath/hadeath_name.dart';
import 'package:islami/components/heading_text.dart';
import 'package:islami/views/quran/item_sura_name.dart';
import 'package:islami/models/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadeathTab extends StatefulWidget {
  const HadeathTab({super.key});

  @override
  State<HadeathTab> createState() => _HadeathTabState();
}

class _HadeathTabState extends State<HadeathTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Center(
            child: Image.asset(
                'assets/images/59253-quran-basmala-islamic-kufic-arabic-calligraphy-icon.png'),
          ),
        ),
        Expanded(
          flex: 7,
          child: Stack(alignment: Alignment.center, children: [
            buildColumnContent(),
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
                    text: AppLocalizations.of(context)!.hadeath,
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
                  height: 1,
                  width: double.infinity,
                  color: const Color(0xffB7935F),
                );
              },
              itemCount: 50,
              itemBuilder: (context, index) {
                return HadeathName(
                  index: index,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
