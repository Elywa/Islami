import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class HadeathContent extends StatelessWidget {
  const HadeathContent({super.key, required this.text, required this.index});
  final String text;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Text(
      ' $text  ',
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
