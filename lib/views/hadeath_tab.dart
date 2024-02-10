import 'package:flutter/material.dart';
import 'package:islami/components/hadeath_name.dart';
import 'package:islami/components/heading_text.dart';
import 'package:islami/components/item_sura_name.dart';
import 'package:islami/models/constants.dart';

class HadeathTab extends StatelessWidget {
  const HadeathTab({super.key});

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
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: HeadingText(
                    text: 'Hadeaths',
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
