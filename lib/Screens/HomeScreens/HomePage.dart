import 'package:flutter/material.dart';
import 'package:furnitureeccommerce_app/Screens/FavoriteScreens/FavoriteScreen.dart';
import 'package:furnitureeccommerce_app/Screens/HomeScreens/HomeScreen.dart';
import 'package:furnitureeccommerce_app/Screens/NotificationScreens/NotificationScreen.dart';
import 'package:furnitureeccommerce_app/Screens/ProfileScreens/ProfileScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int current = 0;
  int pageIndex = 0;

  final pages = [
    const HomeScreen(),
    FavoriteScreen(),
    NotificationScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xffF5F5F5),
          type: BottomNavigationBarType.fixed,
          currentIndex: pageIndex,
          onTap: (index) {
            setState(() {
              pageIndex = index;
            });
          },
          selectedIconTheme: IconThemeData(color: Colors.black),
          unselectedIconTheme: IconThemeData(
            color: Colors.grey,
          ),
          items: [
            BottomNavigationBarItem(
                icon: IconButton(
                  icon: pageIndex == 0
                      ? Icon(Icons.home)
                      : Icon(Icons.home_outlined),
                  onPressed: () {
                    setState(() {
                      pageIndex = 0;
                    });
                  },
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: IconButton(
                  icon: pageIndex == 1
                      ? Icon(Icons.bookmark)
                      : Icon(Icons.bookmark_border_outlined),
                  onPressed: () {
                    setState(() {
                      pageIndex = 1;
                    });
                  },
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: pageIndex == 2
                    ? IconButton(
                        icon: Icon(Icons.notifications_active),
                        onPressed: () {
                          setState(() {
                            pageIndex = 2;
                          });
                        },
                      )
                    : IconButton(
                        icon: Icon(Icons.notifications_outlined),
                        onPressed: () {
                          setState(() {
                            pageIndex = 2;
                          });
                        },
                      ),
                label: ""),
            BottomNavigationBarItem(
                icon: IconButton(
                  icon: pageIndex == 3
                      ? Icon(Icons.person_2)
                      : Icon(Icons.person_2_outlined),
                  onPressed: () {
                    setState(() {
                      pageIndex = 3;
                    });
                  },
                ),
                label: ""),
          ]),

      body: pages[pageIndex],
      //
    );
  }
}
