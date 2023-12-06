import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(padding: EdgeInsets.all(16), children: [
      // filter and search text field
      Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: Row(children: [
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
        ]),
      ),

      // consultation card
      SizedBox(
        height: 170,
        child: Card(
            color: Colors.green.shade50,
            elevation: 0.1,
            shadowColor: Colors.green.shade50,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(children: [
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Free Consultation',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: Colors.green.shade700)),
                      Text('Get free support from our customer service',
                          style: Theme.of(context).textTheme.bodyMedium),
                      FilledButton(
                          onPressed: () => {}, child: const Text("Call now"))
                    ],
                  ),
                ),
                // image
                Image.asset('assets/contact_us.png')
              ]),
            )),
      )
    ]));
  }
}
