import 'package:dynamic_food_delivery/src/features/home_page/data/models/view_type_model.dart';
import 'package:dynamic_food_delivery/src/features/home_page/presentation/cubits/views_cubit.dart';
import 'package:dynamic_food_delivery/src/widgets/banner_widget.dart';
import 'package:dynamic_food_delivery/src/widgets/category_widget.dart';
import 'package:dynamic_food_delivery/src/widgets/product_grid_widget.dart';
import 'package:dynamic_food_delivery/src/widgets/seller_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../service_locator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Food Delivery'),
        ),
        body: BlocProvider(
          create: (context) => sl<ViewTypeCubit>()..loadViewType(),
          child: BlocBuilder<ViewTypeCubit, ViewTypeState>(
            builder: (context, state) {
              return state.when(
                initial: () => Center(child: Text("No food available")),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (message) => Center(child: Text(message)),
                loaded: (views) {
                  return _buildHomeContent(views);
                },
              );
            },
          ),
        ));
  }

  Widget _buildHomeContent(List<ViewTypeModel> data) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        final viewType = data[index];
        switch (viewType.viewtype) {
          case ViewTypes.Banner:
            return BannerWidget(bannerData: viewType.data ?? []);
          case ViewTypes.Category:
            return CategoryWidget(categoryData: viewType.data ?? []);
          case ViewTypes.Products:
            return ProductGridWidget(
              title: viewType.title ?? '',
              productData: viewType.data ?? [],
            );
          case ViewTypes.Seller:
            return SellerListWidget(sellerData: viewType.data ?? []);
          default:
            return const SizedBox.shrink();
        }
      },
    );
  }
}
