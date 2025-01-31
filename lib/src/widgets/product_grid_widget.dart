import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProductGridWidget extends StatelessWidget {
  final String title;
  final List<dynamic> productData;

  const ProductGridWidget({super.key, required this.title, required this.productData});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(title, style: Theme.of(context).textTheme.bodySmall),
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: productData.length,
            itemBuilder: (context, index) {
              final product = productData[index];
              return SizedBox(
                width: 150,
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CachedNetworkImage(
                        imageUrl: product['image'],
                        height: 100,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(product['product_name'], style: Theme.of(context).textTheme.bodySmall),
                            Text('₹${product['discounted_price']}', style: Theme.of(context).textTheme.bodySmall),
                            Text('${product['discount']} off', style: Theme.of(context).textTheme.bodySmall),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
