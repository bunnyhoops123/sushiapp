import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushiapp/components/button.dart';
import 'package:sushiapp/models/food.dart';
import 'package:sushiapp/themes/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List foods = [
    Food(
        name: "Salmon sushi",
        price: "30",
        imagepath: "assets/salmon-sushi.png",
        rating: "4.8"),
    Food(
        name: "Tuna", price: "24", imagepath: "assets/tuna.png", rating: "4.4"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
          'TOKYO',
          style: TextStyle(color: Colors.grey[900]),
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          decoration: BoxDecoration(
              color: primaryColor, borderRadius: BorderRadius.circular(20)),
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Get 32% Promo',
                    style: GoogleFonts.dmSerifDisplay(
                        fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyButton(text: "REDEEM", onTap: () {})
                ],
              ),
              Image.asset(
                'assets/many-sushi.png',
                height: 100,
              )
            ],
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(
            'Food Menu',
            style: TextStyle(
                fontSize: 20,
                color: Colors.grey[800],
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ]),
    );
  }
}
