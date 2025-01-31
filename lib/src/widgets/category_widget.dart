import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final List<dynamic> categoryData;

  const CategoryWidget({super.key, required this.categoryData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryData.length,
        itemBuilder: (context, index) {
          final category = categoryData[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: CachedNetworkImageProvider(category['cat_image']),
                ),
                const SizedBox(height: 4),
                Text(category['cat_name'], style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
          );
        },
      ),
    );
  }
}
