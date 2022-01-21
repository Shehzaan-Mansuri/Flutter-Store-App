import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/models/Products.dart';

import 'catagorrries.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDedaultPadding),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const Catergorie(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDedaultPadding),
            child: GridView.builder(
                itemCount: product.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDedaultPadding,
                  crossAxisSpacing: kDedaultPadding,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) =>
                    ItemCard(product: product[index], press: () {})),
          ),
        )
      ],
    );
  }
}
