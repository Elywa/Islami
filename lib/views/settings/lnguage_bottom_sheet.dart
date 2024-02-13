import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class LnaguageBottomSheet extends StatefulWidget {
  const LnaguageBottomSheet({super.key});

  @override
  State<LnaguageBottomSheet> createState() => _LnaguageBottomSheetState();
}

class _LnaguageBottomSheetState extends State<LnaguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      margin: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              provider.changeLanguage('en');
            },
            child: provider.appLanguage == 'en'
                ? getSelectedWidget(AppLocalizations.of(context)!.english)
                : getUnSelectedWidget(
                    AppLocalizations.of(context)!.english,
                  ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
              onTap: () {
                provider.changeLanguage('ar');
              },
              child: provider.appLanguage == 'ar'
                  ? getSelectedWidget(AppLocalizations.of(context)!.arabic)
                  : getUnSelectedWidget(AppLocalizations.of(context)!.arabic)),
        ],
      ),
    );
  }

  Widget getSelectedWidget(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(
            color: Color(0xffB7935F),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Icon(
          Icons.check,
          size: 35,
          color: Color(0xffB7935F),
        )
      ],
    );
  }

  Widget getUnSelectedWidget(String text) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
