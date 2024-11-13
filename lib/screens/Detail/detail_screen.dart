import 'package:burger_shop/constants.dart';
import 'package:burger_shop/models/product_model.dart';
import 'package:burger_shop/screens/Detail/Widget/detail_app_bar.dart';
import 'package:burger_shop/screens/Detail/Widget/image_slider.dart';
import 'package:burger_shop/screens/Detail/Widget/items_details.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final Product product;
  const DetailScreen({super.key,required this.product});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int currentImage = 0;
  // int currentSlide=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kontentColor,
      body: SafeArea(
        child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // buat back button share & favorite
            const DetailAppBar(),
            //buat slider detail gambar
              MyImageSlider(
                image: widget.product.image,
                onChange: (index) {
                setState(() {
                  currentImage = index;
                });   
              },
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => AnimatedContainer(
                duration: const Duration(microseconds: 300),
                width: currentImage == index ? 15 : 8,
                height: 8,
                margin: const EdgeInsets.only(right: 3),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: currentImage == index
                ? Colors.black
                : Colors.transparent,
                border: Border.all(
                  color: Colors.black,
                 ),
                ),
               ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
              ),
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
                bottom: 100,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //buat nama, hargam rating & penjual produk
                  ItemsDetails(product: widget.product)
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}