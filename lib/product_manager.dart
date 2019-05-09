import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  /// Function: Constructor
  ProductManager(this.startingProduct);

  /// Function: State
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  /// Function: Init
  @override
  void initState() {
    // NOTE: The official docs recommend to move at the very beginning of
    // the function the super.initState call.
    super.initState();

    // NOTE: Using widget we access to the Widget properties the State belongs.
    _products.add(widget.startingProduct);
  }

  /// Function: Build
  @override
  Widget build(BuildContext context) {
    return Column(children: [Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            // NOTE: This is how it actually refresh the products list,
            // using the setState function.
            setState(() {
              _products.add('Advanced Food Tester');
            });
          },
          child: Text('Add Product'),
        )),
        Products(_products)
    ]);
  }
}
