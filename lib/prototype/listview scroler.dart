import 'package:flutter/material.dart';

Widget trending() {
  return Container(
    height: 200,
    child: ListView.separated(
      itemBuilder: (context, index) => Container(),
      separatorBuilder: (context, index) => SizedBox(width: 16),
      itemCount: 15,
      scrollDirection: Axis.horizontal,
    ),
  );
}
 