import 'package:ecommerce_bloc_app/models/models.dart';
import 'package:flutter/material.dart';
import '../../widgets/widgets.dart';

class CartScreen extends StatelessWidget {
  static const String routeName = '/cart';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => CartScreen(),
    );
  }

  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: 'Cart',
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {},
                child: Text(
                  'GO TO CHECKOUT',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Add \$20.0 for FREE Delivery',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                        child: Text(
                          'Add More Items',
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  CartProductCard(
                    product: Product.products[0],
                  ),
                  CartProductCard(
                    product: Product.products[2],
                  ),
                ],
              ),
              Column(
                children: [
                  Divider(thickness: 2),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('SUBTOTAL',
                                style: Theme.of(context).textTheme.headline5),
                            Text('\$5.98',
                                style: Theme.of(context).textTheme.headline5),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('DELIVERY FEE',
                                style: Theme.of(context).textTheme.headline5),
                            Text('\$2.90',
                                style: Theme.of(context).textTheme.headline5),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.black.withAlpha(50),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.all(5.0),
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.black,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('TOTAL',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5!
                                      .copyWith(color: Colors.white)),
                              Text('\$8.88',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5!
                                      .copyWith(color: Colors.white)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
