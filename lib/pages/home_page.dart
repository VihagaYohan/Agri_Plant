import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:badges/badges.dart' as badges;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    );
  }
}
