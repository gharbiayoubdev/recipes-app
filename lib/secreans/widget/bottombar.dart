import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:foods/Config/provider/global_object.dart';
import 'package:foods/Config/theme/appColor.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      //{0: '99+', 1: Icons.assistant_photo, 2: Colors.redAccent},
      items: const [
        TabItem(icon: Icons.favorite, title: 'Faforite' ,),
        TabItem(icon: Icons.search, title: 'Search'),
        TabItem(icon: Icons.home, title: 'Home'),
        TabItem(icon: Icons.shopping_basket, title: 'Product'),
        TabItem(icon: Icons.person, title: 'Profile'),
      ],
      backgroundColor: AppColor.primary,
      initialActiveIndex: 2,
      onTap: (int i) => context.read<GlobalValues>().setHomePageIndex(i),
      style: TabStyle.flip,
    );
  }
}
