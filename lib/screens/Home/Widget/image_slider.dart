import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  final Function (int) onChange;
  final int currentSlide;
  const ImageSlider({super.key, required this.currentSlide,required this.onChange});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 220,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: PageView(
              scrollDirection: Axis.horizontal,
              allowImplicitScrolling: true,
              onPageChanged: onChange,
              physics: const ClampingScrollPhysics(),
              children: [
                Image.asset(
                  "images/slider.png",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "images/slider2.png",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "images/slider3.png",
                  fit: BoxFit.cover,
                )
              ],
            ),
          ),
        ),
        Positioned(
          child: Align(
            alignment: Alignment.bottomCenter,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => AnimatedContainer(
                duration: Duration(microseconds: 300),
                width: ,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}