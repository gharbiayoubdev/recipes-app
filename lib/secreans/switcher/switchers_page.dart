import 'package:flutter/material.dart';
import 'package:foods/Config/provider/global_object.dart';

import 'package:foods/secreans/switcher/faforite.dart';
import 'package:foods/secreans/switcher/home_page/home_page.dart';
import 'package:foods/secreans/switcher/product_page.dart';
import 'package:foods/secreans/switcher/profile_page.dart';
import 'package:foods/secreans/switcher/search_page.dart';
import 'package:foods/secreans/widget/bottombar.dart';
import 'package:provider/provider.dart';

class SwitcherPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          IndexedStack(
            index: context.watch<GlobalValues>().homePageIndex,
            children: [
              Faforite(),
              Search(),
              Home(),
              Product(),
              Profile(),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
