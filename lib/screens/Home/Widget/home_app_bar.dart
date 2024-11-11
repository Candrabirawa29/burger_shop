import 'package:flutter/material.dart';

import '../../../constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: kontentColor,
            padding: const EdgeInsets.all(20),
          ),
        onPressed: (){},
        icon: Image.asset(
          "images/icon.png",
          height: 15,
         ),
        ),
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: kontentColor,
            padding: const EdgeInsets.all(13),
          ),
        onPressed: (){},
        iconSize: 30,
        icon:const Icon(Icons.notifications_outlined)
         ),
      ],
    );
  }
}