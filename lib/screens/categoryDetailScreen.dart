import 'package:flutter/material.dart';
import '../widgets/containerItem.dart';

class CategoreyDetailScreen extends StatelessWidget {
  static const routeName = '/categoryDetailScreen';
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text(
          args,
          style: const TextStyle(
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
