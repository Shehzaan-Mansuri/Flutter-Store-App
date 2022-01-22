import 'package:flutter/material.dart';
import 'package:store_app/models/Products.dart';

import '../../../constants.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Color"),
              Row(
                children: const [
                  colorDot(
                    color: Color(0xFF356C95),
                    isSelected: true,
                  ),
                  colorDot(
                    color: Color(0xFFF8C078),
                  ),
                  colorDot(
                    color: Color(0xFFA29B9B),
                  ),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(
              text: TextSpan(style: TextStyle(color: kTextColor), children: [
            const TextSpan(text: "Sizes\n"),
            TextSpan(
              text: "${product.size} cm",
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(fontWeight: FontWeight.bold),
            )
          ])),
        )
      ],
    );
  }
}

class colorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;

  const colorDot({
    Key? key,
    required this.color,
    Color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: kDedaultPadding / 4,
        right: kDedaultPadding / 2,
      ),
      padding: const EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
