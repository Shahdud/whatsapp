import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp_screen/core/utils/app_colours.dart';

class BottomBarWidget extends StatelessWidget{
  const BottomBarWidget ({super.key});
  @override
  Widget build(BuildContext context) {
return Padding(
  padding: const EdgeInsets.all(16),
  child:
  Row(
    spacing: 8,
    children: [
      Expanded(
        child: TextField(
         autocorrect: true,
         cursorColor: AppColors.green,
         cursorRadius: Radius.circular(16),
         keyboardType: TextInputType.text,
         textInputAction: TextInputAction.send,
         onTapOutside:(_){
           FocusManager.instance.primaryFocus?.unfocus();
         },
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.white,
          ),
          decoration: InputDecoration(
            hintText: "Type a Message ... ",
            hintStyle: const TextStyle(
              color: AppColors.white,
              fontSize: 12,
            ),
            
            prefixIcon: IconButton(
                onPressed: (){},
                icon: SvgPicture.asset("Assets/icons/Camera.svg" , width: 24,)
            ),

            suffixIcon: IconButton(
                onPressed: (){},
                icon: SvgPicture.asset("Assets/icons/Send.svg",width: 24,)
            ),
            
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10000),
              borderSide: BorderSide(color: AppColors.green,width:1 ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10000),
              borderSide: BorderSide(color: AppColors.green, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10000),
              borderSide: BorderSide(color: AppColors.green, width: 1),
            ),
          ) ,
        )
      ),

      IconButton(
        onPressed: (){},
          style:
          IconButton.styleFrom(backgroundColor: AppColors.green),
        icon: SvgPicture.asset("Assets/icons/Mic.svg", width: 28)
      ),
    ],
  ),
);
  }

}