import 'package:flutter/material.dart';
import 'package:islami/views/hadeath_tab.dart';
import 'package:islami/views/quran_tab.dart';
import 'package:islami/views/radio_tab.dart';
import 'package:islami/views/sebha_tab.dart';

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
    const SebhaTab(),
    const RadioTab(),
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
          title: const Text(
            'إسلامي',
            style: TextStyle(
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
              items: const [
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/quran.png'),
                    ),
                    label: 'Quran'),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/quran-quran-svgrepo-com.png'),
                    ),
                    label: 'Hadeath'),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/sebha_blue.png'),
                    ),
                    label: 'Sebha'),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/radio.png'),
                    ),
                    label: 'Radio'),
              ]),
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}
