import 'package:flutter/material.dart';
import 'package:store/UI/widget/cart_widget.dart';

import 'package:store/models/product_model.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key, required this.cartproducts});
  final List<ProductModel> cartproducts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return CartWidget(productModel: cartproducts[index]);
        },
        itemCount: cartproducts.length,
      ),
    );
  }
}
