import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  /// Variables
  final List<Map<String, String>> products;
  final Function deleteProduct;

  /// Constructor
  Products(this.products, { this.deleteProduct });

  /// Function: _buildProductItem
  // This method creates as many items as needed.
  // This way improves performances on the ListView, by removing those items
  // that aren't visible and re-adding them as the come close to the user
  // visibility.
  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () => Navigator.pushNamed<bool>(
                  context, '/product/' + index.toString()
                ).then((bool value) {
                      if (value){
                        deleteProduct(index);
                      }
                }),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Function: _buildProductList
  // This method returns the corresponding view when the products array
  // has some content.
  Widget _buildProductList() {
    Widget productCards;

    if (products.length > 0) {
      productCards = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    } else {
      // NOTE: Instead of return null, you can return a Container.
      // This will not use space on the view and will not fail.
      productCards = Center(child: Text('No products found, please add some'));
    }

    return productCards;
  }

  /// Function: Build
  // This methods returns the lists of products on a Column widget.
  @override
  Widget build(BuildContext context) {
    return _buildProductList();
  }
}
