import 'package:flutter/material.dart';

import '../widgets/containerItem.dart';
import './categoryDetailScreen.dart';

class VehicleScreen extends StatelessWidget {
  static const routeName = "/VehicleScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: const Text(
          'Vehicles',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Cars',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                        CategoreyDetailScreen.routeName,
                        arguments: "Cars");
                  },
                  child: const Text(
                    "See More",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ContainerItem("assets/images/girl1.png"),
                  ContainerItem("assets/images/girl1.png"),
                  ContainerItem("assets/images/girl1.png"),
                  ContainerItem("assets/images/girl1.png"),
                ],
              ),
            ),
          ],
        ),
      ),
      // body: GridView(
      //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //   ),
      //   children: [
      //     ContainerItem("assets/images/girl1.png"),
      //     ContainerItem("assets/images/girl1.png"),
      //     ContainerItem("assets/images/girl1.png"),
      //     ContainerItem("assets/images/girl1.png"),
      //     ContainerItem("assets/images/girl1.png"),
      //     ContainerItem("assets/images/girl1.png"),
      //     ContainerItem("assets/images/girl1.png"),
      //     ContainerItem("assets/images/girl1.png"),
      //   ],
      // ),
    );
  }
}
