import 'package:flutter/material.dart';

import '../widgets/containerItem.dart';
import '../screens/latestScreen.dart';
import '../screens/CategoryScreen.dart';
import '../screens/popularScreen.dart';
import '../screens/animeScreen.dart';
import '../screens/cartoonScreen.dart';
import '../screens/vehicleScreen.dart';
import '../screens/videoGamesScreen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Latest',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(LatestScreen.routeName);
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
                'Categories',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(CategoryScreen.routeName);
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
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: GridTile(
                        footer: const GridTileBar(
                          backgroundColor: Colors.black54,
                          title: Text(
                            "Anime",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        child: GestureDetector(
                          child: Image.asset(
                            "assets/images/girl1.png",
                            fit: BoxFit.contain,
                          ),
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(AnimeScreen.routeName);
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: GridTile(
                        footer: const GridTileBar(
                          backgroundColor: Colors.black54,
                          title: Text(
                            "Video Games",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        child: GestureDetector(
                          child: Image.asset(
                            "assets/images/girl1.png",
                            fit: BoxFit.contain,
                          ),
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(VideoGamesScreen.routeName);
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: GridTile(
                        footer: const GridTileBar(
                          backgroundColor: Colors.black54,
                          title: Text(
                            "Cartoon",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        child: GestureDetector(
                          child: Image.asset(
                            "assets/images/girl1.png",
                            fit: BoxFit.contain,
                          ),
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(CartoonScreen.routeName);
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: GridTile(
                        footer: const GridTileBar(
                          backgroundColor: Colors.black54,
                          title: Text(
                            "Vehicles",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        child: GestureDetector(
                          child: Image.asset(
                            "assets/images/girl1.png",
                            fit: BoxFit.contain,
                          ),
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(VehicleScreen.routeName);
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Popular',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(PopularScreen.routeName);
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
    );
  }
}
