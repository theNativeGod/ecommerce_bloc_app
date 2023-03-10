import 'package:flutter/material.dart';
import '../models/models.dart';
import '../widgets/product_card.dart';

class ProductCarousel extends StatelessWidget {
  final List<Product> products;
  const ProductCarousel({
    required this.products,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: SizedBox(
        height: 165,
        child: ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10,
          ),
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: ProductCard(product: products[index]),
          ),
        ),
      ),
    );
  }
}
