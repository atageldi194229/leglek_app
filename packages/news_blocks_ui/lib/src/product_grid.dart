import 'package:flutter/material.dart';
import 'package:news_blocks_ui/news_blocks_ui.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({
    super.key,
    required this.productsLength,
    this.onPressed,
  });

  final int productsLength;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    if (productsLength == 0) {
      return const SliverToBoxAdapter(child: SizedBox());
    }

    return SliverPadding(
      padding: const EdgeInsets.all(8.0),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.46,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return const ProductCard();
          },
          childCount: productsLength,
        ),
      ),
    );
  }
}
