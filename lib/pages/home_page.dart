import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:badges/badges.dart' as badges;

// pages
import 'package:agri_plant/pages/explore_page.dart';
import 'package:agri_plant/pages/services.page.dart';
import 'package:agri_plant/pages/cart_page.dart';
import 'package:agri_plant/pages/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pages = [
    const ExplorePage(),
    const ServicesPage(),
    const CartPage(),
    const ProfilePage()
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hi Wilson", style: Theme.of(context).textTheme.titleMedium),
              Text("Enjoy our services",
                  style: Theme.of(context).textTheme.bodySmall)
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton.filledTonal(
                  onPressed: () => {},
                  icon: badges.Badge(
                      badgeContent: const Text("3",
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                      position: badges.BadgePosition.topEnd(top: -18, end: -12),
                      badgeStyle:
                          const badges.BadgeStyle(badgeColor: Colors.green),
                      child: const Icon(IconlyBroken.notification))),
            )
          ],
        ),
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) => {
            setState(() {
              currentIndex = value;
            })
          },
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.home),
                activeIcon: Icon(IconlyBold.home),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.call),
                activeIcon: Icon(IconlyBold.call),
                label: "Services"),
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.buy),
                activeIcon: Icon(IconlyBold.buy),
                label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.profile),
                activeIcon: Icon(IconlyBold.profile),
                label: "profile")
          ],
        ));
  }
}
