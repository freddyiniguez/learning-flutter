import 'package:flutter/material.dart';

import '../product_manager.dart';

class ProductsPage extends StatelessWidget {
  /// Variables
  final List<Map<String, String>> products;
  final Function addProduct;
  final Function deleteProduct;

  /// Constructor
  ProductsPage(this.products, this.addProduct, this.deleteProduct);

  /// Function: Build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // NOTE: The Drawer widget let us to create the Hamburger icon
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              // NOTE: This property set to false removes the Hamburger icon
              // once is clicked.
              automaticallyImplyLeading: false,
              title: Text('Choose'),
            ),
            ListTile(
              title: Text('Manage Products'),
              onTap: () {
                // NOTE: You can use the Navigator.pushReplacement).
                Navigator.pushReplacementNamed(context, '/admin');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('EasyList'),
      ),
      // To test conditionals, we removed the startingProduct
      // body: ProductManager(startingProduct: 'Food Tester')
      body: ProductManager(products, addProduct, deleteProduct),
    );
  }
}
