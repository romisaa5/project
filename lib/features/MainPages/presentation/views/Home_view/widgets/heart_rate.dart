import 'package:finalproject/features/MainPages/presentation/views/Home_view/widgets/custom_heartwave.dart';
import 'package:flutter/material.dart';

class HeartRateMonitor extends StatelessWidget {
  final int heartRate = 115;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 180,
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.favorite_border, size: 24, color: Colors.black),
          SizedBox(height: 8),
          Text("Heart", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          HeartWave(),
          SizedBox(height: 10),
          Text("$heartRate", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text("bpm", style: TextStyle(fontSize: 14, color: Colors.black54)),
        ],
      ),
    );
  }
}