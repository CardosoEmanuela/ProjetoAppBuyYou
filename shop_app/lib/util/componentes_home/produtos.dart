import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Blusa Básica Feminina",
      price: 140,
      size: 30,
      description:
          "Malha de algodão\nModelagem slim\nMangas curtas\nDecote V\nSeu tamanho - P",
      image: "assets/images/image_1.jpg",
      color: Colors.white),
  Product(
      id: 2,
      title: "Blusa Básica Feminina",
      price: 234,
      size: 30,
      description: "",
      image: "assets/images/image_2.png",
      color: Colors.white),
  Product(
      id: 3,
      title: "Camiseta de algodão básica",
      price: 120,
      size: 30,
      description: "",
      image: "assets/images/image_3.jpg",
      color: Colors.white),
  Product(
      id: 4,
      title: "Blusa Manga Puff",
      price: 185,
      size: 30,
      description: "",
      image: "assets/images/image_4.jpg",
      color: Colors.white),
  Product(
      id: 5,
      title: "Blusa Manga Bufante",
      price: 266,
      size: 30,
      description: "",
      image: "assets/images/image_5.jpg",
      color: Colors.white),
  Product(
    id: 6,
    title: "Camisa Mangas Amplas",
    price: 296,
    size: 30,
    description: "",
    image: "assets/images/image_6.jpg",
    color: Colors.white,
  ),
];
