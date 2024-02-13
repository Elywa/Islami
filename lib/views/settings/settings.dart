import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:islami/views/settings/lnguage_bottom_sheet.dart';
import 'package:provider/provider.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontFamily: "ElMessiri",
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              showBottomLanguageSheet();
            },
            child: Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffB7935F),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    provider.appLanguage == 'en'
                        ? AppLocalizations.of(context)!.english
                        : AppLocalizations.of(context)!.arabic,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: "ElMessiri",
                    ),
                  ),
                  const Icon(
                    Icons.arrow_drop_down,
                    size: 35,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showBottomLanguageSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return LnaguageBottomSheet();
        });
  }
}
