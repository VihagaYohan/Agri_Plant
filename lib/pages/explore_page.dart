import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(padding: EdgeInsets.all(16), children: [
      // filter and search text field
      Row(children: [
        const Expanded(
            child: TextField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(12),
              prefixIcon: Icon(IconlyLight.search),
              hintText: 'Search here...',
              isDense: true,
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(99),
                  ))),
        )),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: IconButton(
              onPressed: () {},
              icon: IconButton.filledTonal(
                  onPressed: () => {}, icon: const Icon(IconlyLight.filter))),
        )
      ])

      // consultation card
    ]));
  }
}
