import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:store/UI/screen/cart_screen.dart';
import 'package:store/UI/widget/product_widget.dart';
import 'package:store/models/product_model.dart';
import 'package:http/http.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  List<ProductModel> products = [];
  List<ProductModel> cartproducts = [];
  int counter = 0;
  int sort = 2;

  @override
  void initState() {
    super.initState();
    getproducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        actions: [
          Stack(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return CartScreen(cartproducts: cartproducts);
                      }),
                    );
                  },
                  icon: const Icon(Icons.shopping_cart_checkout)),
              Positioned(
                top: -6,
                right: 10,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '${cartproducts.length}',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: FilledButton(
              onPressed: () {
                setState(() {
                  if (sort == 1) {
                    sort = 2;
                  } else {
                    sort = 1;
                  }
                });
              },
              child: const Icon(Icons.sort),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: sort),
              itemBuilder: (context, index) {
                return ProductWidget(
                  model: products[index],
                  onPressed: () {
                    setState(() {
                      cartproducts.add(products[index]);
                    });
                  },
                );
              },
              itemCount: products.length,
            ),
          ),
        ],
      ),
    );
  }

  getproducts() async {
    var res = await get(Uri.parse('https://fakestoreapi.com/products'));
    var listOfMap = jsonDecode(res.body);

    for (var element in listOfMap) {
      ProductModel model = ProductModel.fromjoson(element);
      setState(() {
        products.add(model);
      });
    }
  }
}
