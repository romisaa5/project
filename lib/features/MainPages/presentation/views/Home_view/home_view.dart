
import 'package:finalproject/features/MainPages/presentation/views/Home_view/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 50,),
            CustomTextfield(),
            
          ],
        ),
      ),
    );
  }
}