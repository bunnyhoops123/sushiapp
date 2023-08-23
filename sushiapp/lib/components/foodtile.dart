import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushiapp/models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  FoodTile({required this.food, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 0, right: 20),
      padding: EdgeInsets.all(25),
      // height: MediaQuery.of(context).size.height * 0.1,
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            food.imagepath,
            height: 140,
          ),
          Text(
            food.name,
            style: GoogleFonts.dmSerifDisplay(fontSize: 20),
          ),
          SizedBox(
            width: 160,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$' + food.price,
                  style: TextStyle(
                      color: Colors.grey[900], fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow[900],
                    ),
                    Text(
                      food.rating,
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
