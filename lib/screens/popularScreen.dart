import 'package:flutter/material.dart';
import '../widgets/containerItem.dart';

class PopularScreen extends StatelessWidget {
  static const routeName = "/PopularScreen";

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
          'Popular',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
        ),
        actions: [
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    context: context,
                    builder: (BuildContext context) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Filter",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Week",
                                style: TextStyle(
                                    color: Colors.pinkAccent.shade400),
                              ),
                            ),
                            const Divider(),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Month",
                                style: TextStyle(
                                    color: Colors.pinkAccent.shade400),
                              ),
                            ),
                            const Divider(),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Always",
                                style: TextStyle(
                                    color: Colors.pinkAccent.shade400),
                              ),
                            ),
                          ],
                        ),
                      );
                    });
              },
              icon: const Icon(
                Icons.filter_alt_outlined,
                color: Colors.black,
              ))
        ],
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
