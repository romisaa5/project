import 'package:finalproject/constants.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Image.asset('assets/images/logo.png')
      ,
      Column(
        children: [
          Text('Chatbot',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),),
          Row(
            children: [
              CircleAvatar(
                radius: 6,
                backgroundColor: kSecondaryColor,
              ),
              Text(' online',style: TextStyle(fontSize: 16,color: kSecondaryColor),),
            ],
          )
        ],
      )
      ],
    );
  }
}
