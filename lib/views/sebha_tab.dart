import 'package:flutter/material.dart';

class SebhaTab extends StatelessWidget {
  const SebhaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Image.asset('assets/images/body of seb7a.png'),
        ),
        const Text(
          'Number of Tasbesh',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontFamily: 'ElMessiri',
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Container(
            width: 60,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xffB7935F),
            ),
            child: const Center(
              child: Text(
                '100',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontFamily: 'ElMessiri',
                ),
              ),
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffB7935F)),
          onPressed: null,
          child: const Text(
            'سبحان الله',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w400,
              fontFamily: 'ElMessiri',
            ),
          ),
        )
      ],
    );
  }
}
