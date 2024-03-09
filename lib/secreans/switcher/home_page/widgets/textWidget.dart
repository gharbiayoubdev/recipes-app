import 'package:flutter/material.dart';
import 'package:foods/Config/theme/appColor.dart';
import 'package:foods/Config/theme/dimens.dart';
import 'package:foods/Config/theme/styles.dart';

/* Widget bestfood(){
  return 
} */

class CardWidget extends StatelessWidget {
  String image;
  CardWidget({Key? key, required this.image}) : super(key: key);

  final double _margin = 5;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: _margin),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
          child: Container(
            decoration: BoxDecoration(
                gradient: AppColor.cardShadow,
                borderRadius: BorderRadius.circular(20)),
          ),
        ),
        detailCard()
      ],
    );
  }

  Widget detailCard() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          title(color: AppColor.secondaryTwo, title: 'Food Name'),
          Row(
            children: [
              Expanded(
                flex: 2,
                child:
                    subTitle(color: AppColor.secondaryTwo, title: '1500 KAl'),
              ),
              Expanded(
                child:
                    subTitle(color: AppColor.secondaryTwo, title: '1h 58 Min'),
              )
            ],
          )
        ],
      ),
    );
  }
}

Widget helloName() {
  String name = "Ayoub";

  return Padding(
    padding: EdgeInsets.symmetric(horizontal: Dimens.globalPadding),
    child: RichText(
      text: TextSpan(children: [
        TextSpan(
            text: 'Hello, ', style: TextStyles.textMedium(AppColor.blackColor)),
        TextSpan(text: name, style: TextStyles.textMedium(AppColor.primary)),
      ]),
    ),
  );
}

Widget title({required Color color, required String title}) {
  return Container(
      padding: const EdgeInsets.symmetric(horizontal: Dimens.globalPadding),
      //alignment: Alignment.topLeft,
      child: Text(title, style: TextStyles.textMedium(color)));
}

Widget subTitle({required Color color, required String title}) {
  return Container(
      padding: const EdgeInsets.symmetric(horizontal: Dimens.globalPadding),

      //alignment: Alignment.centerLeft,
      child: Text(title, style: TextStyles.textRegular(color)));

/* Text('What do you want to cook today?',
            style: TextStyles.textRegular(Colors.grey))
       */
}
