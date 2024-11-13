import 'package:burger_shop/models/product_model.dart';
import 'package:burger_shop/screens/Home/Widget/category.dart';
import 'package:burger_shop/screens/Home/Widget/image_slider.dart';
import 'package:burger_shop/screens/Home/Widget/product_cart.dart';
import 'package:burger_shop/screens/Home/Widget/search_bar.dart';
import 'package:flutter/material.dart';

import 'Widget/home_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlider =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 35),
              //buat custom app bar
              const CustomAppBar(),
              const SizedBox(height: 20),
              //buat search bar
              const MySearchBAR(),
              const SizedBox(height: 20),
              ImageSlider(
                currentSlide: currentSlider, 
                onChange: (value) {
                  setState(
                    () {
                    currentSlider = value;
                    },
                  );
                },
              ),
              const SizedBox(height: 20),
              // buat pilihan kategori
              const Categories(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Special For You",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),                
                ]
              ),
              //buat bagian belanja
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.78,
                  crossAxisSpacing: 20,mainAxisSpacing: 20
                ),
                itemCount: products.length,
                itemBuilder:(context, index){
                  return ProductCard(
                    product: products[index],
                  );
                })
            ],
          ),
        ),
      ),
    );
  }
}

