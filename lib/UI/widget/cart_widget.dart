import 'package:flutter/material.dart';
import 'package:store/models/product_model.dart';

class CartWidget extends StatefulWidget {
  const CartWidget({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        onTap: () async {},
        title: Text(widget.productModel.title ?? 'no title'),
        subtitle: Text(widget.productModel.description ?? 'No description'),
        trailing: Text(
          '${widget.productModel.price}',
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ),
    );
  }
}
