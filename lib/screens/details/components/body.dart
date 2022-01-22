import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/models/Products.dart';
import 'package:store_app/screens/home/components/discription.dart';
import 'add_to_cart.dart';
import 'color_and_size.dart';
import 'counter_with_fav_btn.dart';
import 'product_titile_with_image.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDedaultPadding,
                    right: kDedaultPadding,
                  ),
                  height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      SizedBox(height: kDedaultPadding / 2),
                      Description(product: product),
                      SizedBox(height: kDedaultPadding / 2),
                      const CounterWithFavButton(),
                      SizedBox(height: kDedaultPadding / 2),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                producTilteWithImage(product: product)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
