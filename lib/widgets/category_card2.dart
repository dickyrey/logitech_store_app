import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logitechapp/constants.dart';
import 'package:logitechapp/models/category.dart';

class CategoryCard2 extends StatelessWidget {
  final Category category;
  CategoryCard2({this.category});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, right: 12.0),
      child: Container(
        width: 80.0,
        padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: kBlackColor.withOpacity(.2)),
          color: Colors.white,
        ),
        child: Column(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.white,
              child: SvgPicture.asset(
                category.icon,
                width: 18.0,
              ),
            ),
            Spacer(),
            Text(
              category.title,
              style: kCategoryTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
