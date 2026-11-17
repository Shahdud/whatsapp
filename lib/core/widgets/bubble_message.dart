import 'package:flutter/material.dart';
import 'package:whatsapp_screen/core/models/message_model.dart';
import 'package:whatsapp_screen/core/utils/app_colours.dart';
class BubbleMessage extends StatelessWidget{
  final Message message;
  const BubbleMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: message.isSender
          ? Alignment.centerRight
          : Alignment.centerLeft,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.sizeOf(context).width*.7,
        ),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: message.isSender ? AppColors.darkBlue : AppColors.green,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
            topLeft: message.isSender ? Radius.circular(16) : Radius.zero,
            topRight: message.isSender ? Radius.zero : Radius.circular(16),
          )
        ),
        child: Column(
          spacing: 8,
          crossAxisAlignment: .start,
          children: <Widget>[
        Text(
          message.text,
          style: TextStyle(
            color: AppColors.white,
            fontSize: 16 ,
            fontWeight: .w500,
          ),
        ),
           if(message.imagePath != null) ClipRRect(
             borderRadius: BorderRadius.circular(8) ,
             child: Image.asset(message.imagePath!),
           )
        ],
        ),
      ),
    );
  }
}