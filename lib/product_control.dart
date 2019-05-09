import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  // NOTE: The type of this variables is a function, from a Stateful widget.
  final Function addProduct;

  /// Constructor
  ProductControl(this.addProduct);

  /// Function: Build
  @override
  Widget build(BuildContext context){
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      onPressed: () {
        addProduct('Sweets');
      },
      child: Text('Add Product'),
    );
  }
}