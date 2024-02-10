import 'package:flutter/material.dart';

class SebhaTab extends StatelessWidget {
  const SebhaTab({Key? key}) : super(key: key);

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
          const Padding(
            padding:
                EdgeInsets.only(top: 0), // Adjust the top padding as needed
            child: Image(
              image: AssetImage('assets/images/body of seb7a.png'),
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
            child: const Center(
              child: Text(
                '100',
                style: TextStyle(
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
                  backgroundColor: const Color(0xffB7935F)),
              onPressed: null,
              child: const Text(
                'سبحــان الله',
                style: TextStyle(
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
