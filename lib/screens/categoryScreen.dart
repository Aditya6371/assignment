import 'package:flutter/material.dart';
import '../widgets/containerItem.dart';
import '../screens/animeScreen.dart';
import '../screens/cartoonScreen.dart';
import '../screens/vehicleScreen.dart';
import '../screens/videoGamesScreen.dart';

class CategoryScreen extends StatelessWidget {
  static const routeName = "/CategoryScreen";

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
          'Categories',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(18),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Anime',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(AnimeScreen.routeName);
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Video Games',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(VideoGamesScreen.routeName);
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Cartoon',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(CartoonScreen.routeName);
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Vehicles',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(VehicleScreen.routeName);
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
    );
  }
}
