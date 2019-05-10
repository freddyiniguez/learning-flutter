import 'package:flutter/material.dart';
import 'dart:async';

class ProductPage extends StatelessWidget {
  /// Variables
  final String title;
  final String imageUrl;

  /// Constructor
  ProductPage(this.title, this.imageUrl);

  /// Function build
  // This function creates the product details page.
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // NOTE: We use the onWillPop function to control when the user must
      // return. That means now we have to explicitly use Navigator.pop()
      onWillPop: () {
        print('Back button pressed!');
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(imageUrl),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(title),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: RaisedButton(
                color: Theme.of(context).accentColor,
                child: Text('DELETE'),
                // NOTE: The bool value is used to indicate we want to delete
                // that product.
                onPressed: () => Navigator.pop(context, true),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
