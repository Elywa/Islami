import 'package:flutter/material.dart';
import 'package:islami/views/hadeath_tab.dart';
import 'package:islami/views/quran_tab.dart';
import 'package:islami/views/radio_tab.dart';
import 'package:islami/views/sebha_tab.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndex = 0;
  List<Widget> tabs = [
    const QuranTab(),
    const HadeathTab(),
    const RadioTab(),
    const SebhaTab()
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/scaffold_background.png'),
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
                      AssetImage('assets/radio.png'),
                    ),
                    label: 'Radio'),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/sebha_blue.png'),
                    ),
                    label: 'Sebha'),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/quran-quran-svgrepo-com.png'),
                    ),
                    label: 'Hadeath'),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/quran.png'),
                    ),
                    label: 'Quran'),
              ]),
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}
