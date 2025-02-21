import 'package:finalproject/features/MainPages/presentation/views/Dairy_view/widgets/custom_build_calander.dart';
import 'package:flutter/material.dart';

class DairyView extends StatelessWidget {
  const DairyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(height: 80,),
          customBuildCalender()
        ],
      ),
    );
  }
}