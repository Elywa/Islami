import 'package:flutter/material.dart';
import 'package:islami/views/hadeath/hadeath_content_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class HadeathName extends StatelessWidget {
  const HadeathName({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return HadeathContentView(
                index: index,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Center(
          child: Text(
            'الحديث رقم ${index + 1} ',
            style: const TextStyle(
                fontFamily: 'ElMessiri',
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

// throw index to use it in app bar in content view 