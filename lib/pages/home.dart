import 'package:flutter/material.dart';

import '../product_manager.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('EasyList'),
      ),
      // To test conditionals, we removed the startingProduct
      // body: ProductManager(startingProduct: 'Food Tester')
      body: ProductManager(),
    );
  }
}