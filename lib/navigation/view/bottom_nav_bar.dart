import 'package:flutter/material.dart';

enum BottomNavBarItemType {
  home,
  categories,
  cart,
  favorites,
  profile,
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key, this.current = BottomNavBarItemType.home});

  final BottomNavBarItemType current;

  onSelectItem(BuildContext context, BottomNavBarItemType type) {
    // final rideId = context.read<ActiveRideBloc>().state.rideId;

    // if (type == BottomNavBarItemType.activeRide && rideId != null) {
    //   Navigator.of(context).push(RideDetailPage.route(rideId: rideId));
    // }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kBottomNavigationBarHeight,
      child: Material(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Home
            Expanded(
              child: InkWell(
                onTap: () {},
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.home_rounded),
                    Text("Home"),
                  ],
                ),
              ),
            ),

            // Categories
            Expanded(
              child: InkWell(
                onTap: () =>
                    onSelectItem(context, BottomNavBarItemType.categories),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.category_outlined),
                    Text("Categories"),
                  ],
                ),
              ),
            ),

            // Cart
            Expanded(
              child: InkWell(
                onTap: () => onSelectItem(context, BottomNavBarItemType.cart),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.shopping_cart_rounded),
                    Text("Cart"),
                  ],
                ),
              ),
            ),

            // Favorites
            Expanded(
              child: InkWell(
                onTap: () =>
                    onSelectItem(context, BottomNavBarItemType.favorites),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.favorite_border),
                    Text("Categories"),
                  ],
                ),
              ),
            ),

            // Categories
            Expanded(
              child: InkWell(
                onTap: () =>
                    onSelectItem(context, BottomNavBarItemType.profile),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.person_rounded),
                    Text("Profile"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
