import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  final String image;
  final String review;
  final String seller;
  final double price;
  final List<Color> colors;
  final String category;
  final double rate;
  int quantity;

  Product(
    {required this.title,
    required this.review,
    required this.description,
    required this.image,
    required this.price,
    required this.colors,
    required this.seller,
    required this.category,
    required this.rate,
    required this.quantity,});
}

final List<Product> products = [
  Product(
    title: "Burger enak", 
    description: 
    "Lorem Ipsum dolor sit amet, Lorem Ipsum dolor sit amet, ", 
    image: "images/burger1.png", 
    price: 15, 
    seller: "Damar Raditya", 
    colors: [
      Colors.black,
      Colors.blue,
      Colors.orange,
    ], 
    category: "Makanan", 
    review: "(750 Reviews)", 
    rate: 8.4, 
    quantity: 1,
    ),
  Product(
    title: "Minuman enak", 
    description: 
    "Lorem Ipsum dolor sit amet, Lorem Ipsum dolor sit amet, ", 
    image: "images/minuman.jpg", 
    price: 15, 
    seller: "Damar Raditya", 
    colors: [
      Colors.black,
      Colors.blue,
      Colors.orange,
    ], 
    category: "Makanan", 
    review: "(750 Reviews)", 
    rate: 8.4, 
    quantity: 1,
    ),
  Product(
    title: "Burger enak", 
    description: 
    "Lorem Ipsum dolor sit amet, Lorem Ipsum dolor sit amet, ", 
    image: "images/burger1.png", 
    price: 15, 
    seller: "Damar Raditya", 
    colors: [
      Colors.black,
      Colors.blue,
      Colors.orange,
    ], 
    category: "Makanan", 
    review: "(750 Reviews)", 
    rate: 8.4, 
    quantity: 1,
    ),
  Product(
    title: "Burger enak", 
    description: 
    "Lorem Ipsum dolor sit amet, Lorem Ipsum dolor sit amet, ", 
    image: "images/burger1.png", 
    price: 15, 
    seller: "Damar Raditya", 
    colors: [
      Colors.black,
      Colors.blue,
      Colors.orange,
    ], 
    category: "Makanan", 
    review: "(750 Reviews)", 
    rate: 8.4, 
    quantity: 1,
    ),

];