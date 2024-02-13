import 'package:flutter/material.dart';
import 'package:islami/views/hadeath/hadeath_tab.dart';
import 'package:islami/views/quran/quran_tab.dart';
import 'package:islami/views/radio/radio_tab.dart';
import 'package:islami/views/sebha/sebha_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/views/settings/settings.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});
  static const String routeName = 'home_view';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndex = 0;
  List<Widget> tabs = [
    QuranTab(),
    const HadeathTab(),
    SebhaTab(),
    const RadioTab(),
    const Settings()
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/scaffold_background.png'),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            AppLocalizations.of(context)!.app_title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontFamily: 'ElMessiri',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: const Color(0xffB7935F),
          ),
          child: BottomNavigationBar(
              selectedItemColor: Colors.black,
              showUnselectedLabels: true,
              currentIndex: selectedIndex,
              onTap: (index) {
                selectedIndex = index;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon: const ImageIcon(
                      AssetImage('assets/images/quran.png'),
                    ),
                    label: AppLocalizations.of(context)!.quran_tab),
                BottomNavigationBarItem(
                    icon: const ImageIcon(
                      AssetImage('assets/images/quran-quran-svgrepo-com.png'),
                    ),
                    label: AppLocalizations.of(context)!.hadeath_tab),
                BottomNavigationBarItem(
                    icon: const ImageIcon(
                      AssetImage('assets/images/sebha_blue.png'),
                    ),
                    label: AppLocalizations.of(context)!.sebha_tab),
                BottomNavigationBarItem(
                    icon: const ImageIcon(
                      AssetImage('assets/images/radio.png'),
                    ),
                    label: AppLocalizations.of(context)!.radio_tab),
                BottomNavigationBarItem(
                    icon: const Icon(
                      Icons.settings,
                    ),
                    label: AppLocalizations.of(context)!.settings_tab),
              ]),
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}
