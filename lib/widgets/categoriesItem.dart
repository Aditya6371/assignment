import 'package:flutter/material.dart';

class CategoriesItem extends StatelessWidget {
  CategoriesItem(this.categorytext,);

  final String categorytext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        width: 250,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
          child: GridTile(
            footer: GridTileBar(
              backgroundColor: Colors.black54,
              title: Text(
                categorytext,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            child: GestureDetector(
              child: Image.asset(
                "assets/images/girl1.png",
                fit: BoxFit.contain,
              ),
              onTap: () {},
            ),
          ),
        ),
      ),
    );
  }
}