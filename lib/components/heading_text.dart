import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class HeadingText extends StatelessWidget {
  const HeadingText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.w600),
    );
  }
}
