import 'package:flutter/material.dart';
import '../widgets/containerItem.dart';

class LatestScreen extends StatelessWidget {
  static const routeName = "/LatestScreen";

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
          'Latest',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
        ),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          ContainerItem("assets/images/girl1.png"),
          ContainerItem("assets/images/girl1.png"),
          ContainerItem("assets/images/girl1.png"),
          ContainerItem("assets/images/girl1.png"),
          ContainerItem("assets/images/girl1.png"),
          ContainerItem("assets/images/girl1.png"),
          ContainerItem("assets/images/girl1.png"),
          ContainerItem("assets/images/girl1.png"),
        ],
      ),
    );
  }
}
