import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image(
              image: AssetImage(
                  'assets/images/551-5517026_radio-vector-png-old-radio-png-vector-transparent.png'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'إذاعة القرآن الكريم ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontFamily: 'ElMessiri',
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
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
