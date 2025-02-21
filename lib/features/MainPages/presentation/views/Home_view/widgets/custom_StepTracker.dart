import 'package:finalproject/constants.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class StepTracker extends StatelessWidget {
  StepTracker({required this.icon,required this.count,required this.percentage,required this.type});
  final String type;
  final int steps = 2265;
  final double percentage;
  final IconData icon;
  final String count;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 173,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(icon, size: 24, color: Colors.black),
                  SizedBox(height: 8),
                  Text(type,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor)),
                ]),
          ),
          SizedBox(height: 10),
          CircularPercentIndicator(
            radius: 50,
            lineWidth: 10,
            percent: percentage,
            center: Text(count,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor)),
            progressColor: kSecondaryColor,
            backgroundColor: kPrimaryColor,
            circularStrokeCap: CircularStrokeCap.round,
          ),
        ],
      ),
    );
  }
}
