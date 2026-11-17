import 'package:flutter/material.dart';
import 'package:whatsapp_screen/core/models/message_model.dart';
import 'package:whatsapp_screen/core/utils/app_colours.dart';
import 'package:whatsapp_screen/core/widgets/WhatsAppAppBar.dart';
import 'package:whatsapp_screen/core/widgets/bottom_bar_widget.dart';

import '../core/widgets/bubble_message.dart';

class WhatsAppScreen extends StatelessWidget {
  const WhatsAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        color: AppColors.black,
        image: DecorationImage(
          image: AssetImage("assets/images/background_pattern.png"),
            fit: BoxFit.cover,
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent ,
        appBar: const WhatsAppAppBar(),
        body: Column(
          children: [
            Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.all(15),
                    itemBuilder: (context , index){
                      return  BubbleMessage(message: Message.messages[index] );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: 16);
                    },
                  itemCount: Message.messages.length ,
                )
            ),
            const BottomBarWidget(),
          ],
        ),
      ),
    );

  }
}