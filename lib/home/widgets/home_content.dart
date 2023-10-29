import 'package:flutter/material.dart';
import 'package:news_blocks_ui/news_blocks_ui.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    // return const SizedBox();

    return const CustomScrollView(
      slivers: [
        ProductGrid(
          productsLength: 10,
        ),
      ],
    );
  }
}
