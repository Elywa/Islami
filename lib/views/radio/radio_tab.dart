import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Image(
              image: AssetImage(
                  'assets/images/551-5517026_radio-vector-png-old-radio-png-vector-transparent.png'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            AppLocalizations.of(context)!.izaa_quarn,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontFamily: 'ElMessiri',
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.skip_previous,
                size: 50,
                color: Color(0xffB7935F),
              ),
              Icon(
                Icons.pause,
                size: 50,
                color: Color(0xffB7935F),
              ),
              Icon(
                Icons.skip_next,
                size: 50,
                color: Color(0xffB7935F),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
