import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SellerListWidget extends StatelessWidget {
  final List<dynamic> sellerData;

  const SellerListWidget({super.key, required this.sellerData});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Recommended Restaurants', style: Theme.of(context).textTheme.bodySmall),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: sellerData.length,
          itemBuilder: (context, index) {
            final seller = sellerData[index]['seller_details'];
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: CachedNetworkImageProvider(seller['seller_image']),
              ),
              title: Text(seller['seller_name']),
              subtitle: Text(seller['seller_one_line_description']),
              trailing: Text('${seller['seller_rating']} ★'),
            );
          },
        ),
      ],
    );
  }
}
