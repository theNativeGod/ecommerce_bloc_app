import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  CustomAppBar({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Container(
        color: Colors.black,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: FittedBox(
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline2!.copyWith(
                  color: Colors.white,
                ),
          ),
        ),
      ),
      centerTitle: true,
      iconTheme: const IconThemeData(color: Colors.black),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/wishlist');
          },
          icon: Icon(Icons.favorite),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}
