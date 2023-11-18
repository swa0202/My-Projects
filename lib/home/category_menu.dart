import 'package:flutter/material.dart';
import 'package:restaurant_app/home/home_page.dart';

class Menu {
  final String title, image;
  final double price;

  Menu({required this.title, required this.image, required this.price});
}

class CategoryMenu {
  final String category;
  final List<Menu> items;

  CategoryMenu({required this.category, required this.items});
}

final List<CategoryMenu> demoCategoryMenus = [
  CategoryMenu(
      category: "Incoming",
      items: [
        Menu(
          price: 5,
          image:"assets/images/incoming1.png" ,
          title: "Burrata with truffle cream and tomato",
        ),
        Menu(
          price: 2,
          image:"assets/images/incoming2.png" ,
          title: "Baked aubergine mille-feuille with mozzarella and parmesan",
        ),
        Menu(
          price: 7,
          image:"assets/images/incoming3.png" ,
          title: "Octopus carpaccio with lemon, arugula and tomato cherry",
        )
      ]),
  CategoryMenu(
      category: "Dish",
      items: [
        Menu(
          price: 5,
          image:"assets/images/dish1.png" ,
          title: "Sapaghetti al cartoccio (with seafood, garlic, parsley and finished in the oven)",
        ),
        Menu(
          price: 2,
          image:"assets/images/dish2.png" ,
          title: "Spaghetti carbonara",
        ),
        Menu(
          price: 7,
          image:"assets/images/dish3.png" ,
          title: "Fagottoni di ricotta e pear (sachets stuffed and pear with cheese sauce and walnuts)",
        ),
      ]),
  CategoryMenu(
      category: "Dessert",
      items: [
        Menu(
          price: 5,
          image:"assets/images/dessert1.png" ,
          title: "Chiacchiere di Nutella",
        ),
        Menu(
          price: 2,
          image:"assets/images/dessert2.png" ,
          title: "Tiramisu",
        ),
        Menu(
          price: 7,
          image:"assets/images/dessert3.png" ,
          title: "Sicilian cannoli",
        ),
      ]),
  CategoryMenu(
      category: "Beverages",
      items: [
        Menu(
          price: 5,
          image:"assets/images/beverages1.png" ,
          title: "Coffee",
        ),
        Menu(
          price: 2,
          image:"assets/images/beverages2.png" ,
          title: "Half Bottle of water",
        ),
        Menu(
          price: 7,
          image:"assets/images/beverages3.png" ,
          title: "Bottle of wine",
        ),
        Menu(
          price: 7,
          image:"assets/images/beverages4.png" ,
          title: "Glass of wine",
        ),
      ])
];