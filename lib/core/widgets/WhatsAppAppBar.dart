import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp_screen/core/utils/app_colours.dart';

class WhatsAppAppBar extends StatelessWidget
    implements PreferredSizeWidget {

  const WhatsAppAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: AppColors.white,
      backgroundColor: AppColors.green,

      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.arrow_back_ios_new_rounded),
      ),

      title: Row(
        spacing: 8,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(
              "assets/images/profile_image.png",
            ),
          ),
          Text(
            "John Safwat",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),

      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/Phone.svg",
            width: 25,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/video.svg",
            width: 25,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/More-vertical.svg",
            width: 25,
          ),
        ),
      ],
    );
  }
}
