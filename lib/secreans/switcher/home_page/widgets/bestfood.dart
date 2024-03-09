import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:foods/Config/theme/dimens.dart';
import 'package:foods/secreans/switcher/home_page/widgets/textWidget.dart';

class BestFood extends StatelessWidget {
  const BestFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      title(color: const Color(0xFF000000), title: 'Best Food '),
      SizedBox(height: Dimens.space(context)),
      CarouselSlider.builder(
        itemCount: 15,
        options: CarouselOptions(
          // enlargeCenterPage: true,
          height: 150,
          viewportFraction: orientation == Orientation.portrait ? 0.5 : 0.5,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval:const Duration(seconds: 3),
          autoPlayAnimationDuration:const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
        ),
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
            CardWidget(image: 'assets/images/sweetfood1.jpg'),
      ),
    ]);
  }
}
