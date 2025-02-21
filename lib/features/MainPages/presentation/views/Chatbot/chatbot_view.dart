import 'package:finalproject/features/MainPages/presentation/views/Chatbot/widgets/custom_appbar.dart';
import 'package:finalproject/features/MainPages/presentation/views/Chatbot/widgets/custom_textfield.dart';
import 'package:finalproject/features/MainPages/presentation/views/Chatbot/widgets/customchatbubbleforUser.dart';
import 'package:finalproject/features/MainPages/presentation/views/Chatbot/widgets/customchaybubbleforAi.dart';
import 'package:flutter/material.dart';

class ChatbotView extends StatelessWidget {
  const ChatbotView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 60,),
       CustomAppbar(),
        SizedBox(height: 30,),
       chatbubbleforAi(massege: 'Hello, I’m FitBot! 👋 I’m your personal sport assistant. How can I help you?'),
        chatbubbleForUser(massege: 'Book me a visit in a gym',),
        chatbubbleForUser(massege: 'Show me other sports facilities around'),
        Spacer(),
      ChatSend(),
        SizedBox(height: 20,),
      ],
    );
  }
}