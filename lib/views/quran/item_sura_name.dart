import 'package:flutter/material.dart';
import 'package:islami/views/quran/sura_content_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class ItemSuraName extends StatelessWidget {
  const ItemSuraName({super.key, required this.text, required this.index});
  final String text;
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return SuraContentView(
                suraIndex: index,
                suraName: text,
              );
            },
          ),
        );
      },
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w600,
          fontFamily: 'ElMessiri',
        ),
      ),
    );
  }
}
