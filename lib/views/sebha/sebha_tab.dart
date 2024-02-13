import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SebhaTab extends StatefulWidget {
  SebhaTab({Key? key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 1; // Initialize the counter to 1
  double rotationAngle = 0.0; // Initial rotation angle
  String text = ' سبحان الله';
  List<String> tasbeh = [
    ' سبحان الله',
    'الحمد لله',
    'لا اله الا الله ',
    'الله اكبر'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Stack(
        alignment: Alignment.center,
        children: [
          const Positioned(
            top: 15,
            left: 150,
            child: Center(
              child: Image(
                width: 120,
                height: 65,
                image: AssetImage('assets/images/head of seb7a.png'),
              ),
            ),
          ),
          Positioned(
            top: 60,
            child: Transform.rotate(
              angle: rotationAngle,
              child: const Image(
                image: AssetImage('assets/images/body of seb7a.png'),
              ),
            ),
          ),
          Positioned(
            bottom: 65,
            child: Column(
              children: [
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    AppLocalizations.of(context)!.tasbeah_number,
                    style: const TextStyle(
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
                        rotationAngle += 15.0 *
                            (3.141592653589793 / 180); // Rotate by 60 degrees
                        if (counter % 33 == 0) {
                          int index = counter ~/ 33;
                          if (index < tasbeh.length) {
                            text = tasbeh[index];
                          } else {
                            // Optionally, you can reset the counter to 1 here
                            // counter = 1;
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
          ),
        ],
      ),
    );
  }
}
