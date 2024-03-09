import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:foods/Config/theme/dimens.dart';
import 'package:foods/secreans/switcher/home_page/widgets/textWidget.dart';

class Trending extends StatelessWidget {
  const Trending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      title(color: const Color(0xFF000000), title: 'Trending '),
      SizedBox(height: Dimens.space(context)),
      CarouselSlider.builder(
        itemCount: 15,
        options: CarouselOptions(
          // enlargeCenterPage: true,
          height: 200,
          viewportFraction: orientation == Orientation.portrait ? 0.88 : 0.5,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 2000),
          autoPlayCurve: Curves.fastOutSlowIn,
        ),
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
            CardWidget(image: 'assets/images/sweetfood1.jpg'),
      ),
    ]);
  }
}
