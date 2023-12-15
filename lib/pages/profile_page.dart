import 'package:agri_plant/pages/orders_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        // profile
        Padding(
          padding: const EdgeInsets.only(top: 25, bottom: 15),
          child: CircleAvatar(
              radius: 62,
              backgroundColor: Theme.of(context).colorScheme.primary,
              child: const CircleAvatar(
                radius: 60,
                foregroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?q=80&w=3088&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
              )),
        ),
        Center(
            child: Text("Jessie Williams",
                style: Theme.of(context).textTheme.titleMedium)),
        Center(
            child: Text('jessiewilliams@gmail.com',
                style: Theme.of(context).textTheme.bodySmall)),
        const SizedBox(height: 25),
        ListTile(
          title: const Text('My Orders'),
          leading: const Icon(IconlyLight.bag),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OrdersPage(),
                ));
          },
        ),
        ListTile(
          title: const Text("About us"),
          leading: const Icon(IconlyLight.infoSquare),
          onTap: () {},
        ),

        ListTile(
          title: const Text("Logout"),
          leading: const Icon(IconlyLight.logout),
          onTap: () {},
        )
      ]),
    );
  }
}
