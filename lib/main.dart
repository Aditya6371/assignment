import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './screens/mainScreen.dart';
import './screens/favoriteScreen.dart';
import './screens/settingScreen.dart';
import './screens/latestScreen.dart';
import './screens/popularScreen.dart';
import './screens/categoryScreen.dart';
import './screens/itemDetailScreen.dart';
import './screens/animeScreen.dart';
import './screens/cartoonScreen.dart';
import './screens/vehicleScreen.dart';
import './screens/videoGamesScreen.dart';
import './screens/categoryDetailScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assignment',
      home: MyHomePage(),
      routes: {
        LatestScreen.routeName: (ctx) => LatestScreen(),
        PopularScreen.routeName: (ctx) => PopularScreen(),
        CategoryScreen.routeName: (ctx) => CategoryScreen(),
        ItemDetailScreen.routeName: (ctx) => ItemDetailScreen(),
        AnimeScreen.routeName: (ctx) => AnimeScreen(),
        CartoonScreen.routeName: (ctx) => CartoonScreen(),
        VehicleScreen.routeName: (ctx) => VehicleScreen(),
        VideoGamesScreen.routeName: (ctx) => VideoGamesScreen(),
        CategoreyDetailScreen.routeName: (ctx) => CategoreyDetailScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final pages = [
    MainScreen(),
    FavoriteScreen(),
    SettingScreen(),
  ];
  final title = const [
    Text(
      'Explore',
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
    ),
    Text(
      'Favorites',
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
    ),
    Text(
      'Settings',
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: title[_currentIndex],
          backgroundColor: Colors.white,
        ),
        body: pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedItemColor: Colors.pinkAccent.shade400,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.grid_view), label: 'Explore'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorites'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'settings'),
          ],
        ));
  }
}
