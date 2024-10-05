import 'package:flutter/material.dart';
import 'package:store/models/product_model.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({super.key, required this.model, this.onPressed});
  final ProductModel model;
  final Function()? onPressed;

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.grey),
      child: Stack(
        children: [
          Positioned(
            top: 5,
            right: 5,
            child: IconButton(
              onPressed: widget.onPressed,
              icon: const Icon(Icons.add_shopping_cart),
            ),
          ),
          Positioned(
            bottom: 5,
            right: 5,
            left: 5,
            //top: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  widget.model.image!,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                Center(
                  child: Text(
                    widget.model.title!,
                    maxLines: 1,
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  '${widget.model.price!}\$',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Text('${widget.model.rateCount}',
                          textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
