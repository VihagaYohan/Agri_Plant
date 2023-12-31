import 'package:flutter/material.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tabs = ['Processing', 'Picking', 'Shipping', 'Delivered'];

    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
            title: const Text("My Orders"),
            bottom: TabBar(
                isScrollable: true,
                tabs: List.generate(tabs.length, (index) {
                  return Tab(text: tabs[index]);
                }))),
      ),
    );
  }
}
