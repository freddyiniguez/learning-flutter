import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  /// Variables
  final List<String> products;

  /// Constructor
  // NOTE: This is also a shortcut to assign to the class variable the
  // value the constructor is receiving.
  // Also, you can assign a pre-defined value.
  Products([this.products = const []]);

  ///Build
  /// This methods returns the lists of products on a Column widget.
  @override
  Widget build(BuildContext context) {
    return Column(
      children: products
          .map((element) => Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/food.jpg'),
                    Text(element),
                  ],
                ),
              ))
          .toList(),
    );
  }
}
