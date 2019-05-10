import 'package:flutter/material.dart';

import '../product_manager.dart';
import './products_admin.dart';

class ProductsPage extends StatelessWidget {
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => ProductsAdminPage()),
                );
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
      body: ProductManager(),
    );
  }
}
