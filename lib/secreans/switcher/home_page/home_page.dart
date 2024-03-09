import 'package:flutter/material.dart';
import 'package:foods/Config/provider/global_object.dart';
import 'package:foods/Config/theme/dimens.dart';
import 'package:foods/secreans/switcher/home_page/widgets/bestfood.dart';
import 'package:foods/secreans/switcher/home_page/widgets/categories.dart';
import 'package:foods/secreans/switcher/home_page/widgets/header.dart';
import 'package:foods/secreans/switcher/home_page/widgets/trending.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey _keyw = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /*  Container(
            height: Dimens.headerHeigh(context),
            decoration: BoxDecoration(
              color: AppColor.primary,
              borderRadius: BorderRadius.only(

      bottomLeft: Radius.circular(30),
      bottomRight:Radius.circular(30),
    ),
            )),*/

        Container(
            //color: AppColor.lightprimary,
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Dimens.headerTopPadding(context)),
            Header(), // Hello Name
            SizedBox(height: Dimens.space(context)),
            Trending(),
            SizedBox(height: Dimens.space(context)),

            categories(),
            SizedBox(height: Dimens.space(context)),
            BestFood(),
          ],
        )),
      ],
    );
  }
}
