import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final Map<String, String> startingProduct;

  /// Constructor
  // NOTE: Using curly braces let you name the variable when passed, also
  // with a pre-defined value, just as follows:
  // ProductManager({this.startingProduct = 'Sweets Testers'});
  ProductManager({this.startingProduct});

  /// Function: State
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  /// Variables
  // NOTE: this property is final, that means we can't assign a new value, but
  // does modified the existing one (we can use the add function).
  // If we would like to never modified the list, we should use const.
  // final List<String> _products = const []; <-- this never changes list.
  final List<Map<String, String>> _products = [];

  /// Function: Init
  @override
  void initState() {
    // NOTE: The official docs recommend to move at the very beginning of
    // the function the super.initState call.
    super.initState();

    // NOTE: Using widget we access to the Widget properties the State belongs.
    if (widget.startingProduct != null) {
      _products.add(widget.startingProduct);
    }
  }

  /// Function: AddProduct
  void _addProduct(Map<String, String> product) {
    // NOTE: This is how it actually refresh the products list,
    // using the setState function.
    setState(() {
      _products.add(product);
    });
  }

  /// Function:
  void _deleteProduct(int index){
    setState(() {
      _products.removeAt(index);
    });
  }

  /// Function: Build
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          // NOTE: the function that adds products is passed to the stateless
          // widgets as a parameter, so that widget can call the function when
          // the button is pressed.
          margin: EdgeInsets.all(10.0),
          child: ProductControl(_addProduct)),
      Expanded(
          child: Products(_products, deleteProduct: _deleteProduct)),
    ]);
  }
}
