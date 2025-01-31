import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  final List<dynamic> bannerData;

  const BannerWidget({super.key, required this.bannerData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        itemCount: bannerData.length,
        itemBuilder: (context, index) {
          final banner = bannerData[index];
          return CachedNetworkImage(
            imageUrl: banner['appbanner_image'],
            fit: BoxFit.cover,
            placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          );
        },
      ),
    );
  }
}
