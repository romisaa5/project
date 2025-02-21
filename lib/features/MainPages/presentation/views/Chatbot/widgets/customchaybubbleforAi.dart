
import 'package:finalproject/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class chatbubbleforAi extends StatelessWidget {
 const chatbubbleforAi({
    super.key,required this.massege
  });
    final String massege;
  @override
  Widget build(BuildContext context) {
    return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(FontAwesomeIcons.robot,color: kSecondaryColor,),
        SizedBox(height: 7,),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: EdgeInsets.only(top: 22, bottom: 22, left: 18, right: 18),
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(22),
                    topRight: Radius.circular(22),
                    bottomLeft: Radius.circular(22)),
                color: Colors.white
              ),
              child: Text(
               massege,
                style: TextStyle(color: kPrimaryColor, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

