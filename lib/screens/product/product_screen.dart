import 'package:ecommerce_bloc_app/blocs/wishlist/wishlist_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/product_model.dart';
import '../../widgets/widgets.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = '/product';

  static Route route({required Product product}) {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => ProductScreen(
        product: product,
      ),
    );
  }

  final Product product;

  ProductScreen({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: product.name,
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  context
                      .read<WishlistBloc>()
                      .add(AddProduct(product: product));
                },
                icon: Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {},
                child: Text(
                  'ADD TO CART',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              HeroCarouselCard(
                product: product,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      alignment: Alignment.bottomCenter,
                      color: Colors.black.withAlpha(50),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      width: MediaQuery.of(context).size.width - 10,
                      height: 50,
                      alignment: Alignment.center,
                      color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                product.name,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(color: Colors.white),
                              ),
                              Text(
                                '\$${product.price}',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(color: Colors.white),
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: ListTile(
                  title: Text('Product Descripton',
                      style: Theme.of(context).textTheme.headline3),
                  subtitle: Text(
                      textAlign: TextAlign.left,
                      '\nladfjladsjfkladsjf jlfjadjfkadjfkldjfkljdsaf;djafafkadjfladfj;ladsjf,djfajsdfhw fhfhfk sdfhdsafhdsa f hjhdfk hgjfdklg jfgklgjlsfk jglkdfsjglfkds jglkfjglksdf jgdfjg fjgljdfslg   jgfgjlsk gjdflglfkj g gdfjgjd g   j ',
                      style: Theme.of(context).textTheme.bodyText1),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: ListTile(
                  title: Text('Delivery Information',
                      style: Theme.of(context).textTheme.headline3),
                  subtitle: Text(
                      textAlign: TextAlign.left,
                      '\nladfjladsjfkladsjf jlfjadjfkadjfkldjfkljdsaf;djafafkadjfladfj;ladsjf,djfajsdfhw fhfhfk sdfhdsafhdsa f hjhdfk hgjfdklg jfgklgjlsfk jglkdfsjglfkds jglkfjglksdf jgdfjg fjgljdfslg   jgfgjlsk gjdflglfkj g gdfjgjd g   j ',
                      style: Theme.of(context).textTheme.bodyText1),
                ),
              ),
            ],
          ),
        ));
  }
}
