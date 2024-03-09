import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:foods/Config/theme/dimens.dart';
import 'package:foods/Config/theme/styles.dart';

Widget categories() {
  return Container(
      padding: const EdgeInsets.symmetric(horizontal: Dimens.globalPadding),

      //margin: EdgeInsets.only(top: 0),
      height: Dimens.categoriesHeigh,
      child: ListView.separated(
        itemCount: 8,
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return const SizedBox(width: 16);
        },
        itemBuilder: (context, index) {
          return Container(
              child: Column(
            children: [
              Container(
                height: Dimens.subCategoriesHeigh,
                width: Dimens.categoriesWidth,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/list2.jpg'),
                        fit: BoxFit.cover)),
              ),
              Container(
                constraints:
                    const BoxConstraints(maxWidth: Dimens.categoriesWidth),
                padding:
                    const EdgeInsets.symmetric(vertical: Dimens.subtitleMargin),
                child: Text(
                  "data",
                  style: TextStyles.textRegular(Colors.grey),
                ),
              )
            ],
          ));
        },
      ));
}
