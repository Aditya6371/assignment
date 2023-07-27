import 'package:flutter/material.dart';
import '../screens/itemDetailScreen.dart';

class ContainerItem extends StatelessWidget {
  final String image;
  ContainerItem(this.image);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(ItemDetailScreen.routeName);
        },
        child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(15)),
          child: Image.asset(
            image,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
