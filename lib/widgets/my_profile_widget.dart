import 'package:flutter/material.dart';

class MyProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/myprofile.png',
            width: 61,
          ),
          SizedBox(height: 20),
          Text(
            'Total Balance',
            style: TextStyle(
                fontFamily: 'Avenir',
                fontWeight: FontWeight.w700,
                fontSize: 53,
                color: Color(0xffF0F1F3)),
          ),
          Text(
            '\$ 12,575.00',
            style: TextStyle(
              fontFamily: 'Avenir',
              fontWeight: FontWeight.w400,
              fontSize: 32,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 30),
          Text(
            'Send money',
            style: TextStyle(
              fontFamily: 'Avenir',
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
