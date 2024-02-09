import 'package:flutter/material.dart';
import 'package:islami/components/heading_text.dart';
import 'package:islami/constants.dart';

class QuranTab extends StatelessWidget {
  QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Center(
            child: Image.asset('assets/qur2an_screen_logo.png'),
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
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: HeadingText(
                    text: 'Vreses Number',
                  ),
                ),
                Expanded(
                  child: HeadingText(
                    text: 'Sura Name',
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
            child: ListView.builder(
              itemCount: Constants.suraNames.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Expanded(
                      child: Text(
                        '${Constants.versesNumber[index]}',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        Constants.suraNames[index],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
