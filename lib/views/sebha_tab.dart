import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  SebhaTab({Key? key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  double rotationAngle = 0.0; // Initial rotation angle
  String text = 'سبحــان الله';
  List<String> tasbeh = [
    'سبحــان الله',
    'الحمد لله',
    'لا اله الا الله',
    'الله أكبر'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 0),
            child: Center(
              child: Image(
                width: 120,
                height: 55,
                image: AssetImage('assets/images/head of seb7a.png'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 0), // Adjust the top padding as needed
            child: Transform.rotate(
              angle: rotationAngle,
              child: Image(
                image: AssetImage('assets/images/body of seb7a.png'),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Text(
              'عدد التسبيحات',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'ElMessiri',
                fontSize: 25,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            width: 69,
            height: 81,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: const Color(0xffB7935F),
            ),
            child: Center(
              child: Text(
                '$counter',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xffB7935F),
              ),
              onPressed: () {
                setState(() {
                  counter++;
                  rotationAngle += 15.0 * (3.141592653589793 / 180);
                  if (counter % 33 == 0) {
                    int index = counter ~/ 33;
                    if (index < tasbeh.length) {
                      text = tasbeh[index];
                    } else {
                      counter = 0;
                      text = tasbeh[0];
                    }
                  }
                });
              },
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
