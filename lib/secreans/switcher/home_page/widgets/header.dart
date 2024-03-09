import 'package:flutter/material.dart';
import 'package:foods/secreans/switcher/home_page/widgets/textWidget.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.amber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          helloName(),
          const SizedBox(height: 5),
          subTitle(color: Colors.grey, title: "What do you want to cook today?")
        ],
      ),
    );
  }
}
