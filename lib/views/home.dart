import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logitechapp/constants.dart';
import 'package:logitechapp/models/category.dart';
import 'package:logitechapp/models/product.dart';
import 'package:logitechapp/views/detail_product.dart';
import 'package:logitechapp/widgets/category_card.dart';
import 'package:logitechapp/widgets/category_card2.dart';
import 'package:logitechapp/widgets/product_card.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: kWhiteColor,
        leading: Padding(
          padding: EdgeInsets.all(18.0),
          child: SvgPicture.asset(
            "assets/icons/drawer.svg",
            width: 15.0,
            color: kBlackColor,
          ),
        ),
        actions: [
          SvgPicture.asset(
            "assets/icons/search.svg",
            width: 25.0,
            color: kBlackColor,
          ),
          SizedBox(width: 18.0),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(left: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25.0),
            Text(
              "LIFE IS MORE FUN\nWHEN YOU PLAY",
              style: kH1Style,
            ),
            SizedBox(height: 15.0),
            Container(
              width: double.infinity,
              height: 120.0,
              child: ListView.builder(
                itemCount: categoryList.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  var category = categoryList[index];
                  return index == 0
                      ? CategoryCard(
                          category: category,
                        )
                      : CategoryCard2(
                          category: category,
                        );
                },
              ),
            ),
            SizedBox(height: 25.0),
            Padding(
              padding: EdgeInsets.only(right: 18.0),
              child: Row(
                children: [
                  Text("Products", style: kH2Style),
                  Spacer(),
                  Text("See all", style: kH2SubtitleStyle),
                ],
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              width: double.infinity,
              height: 250.0,
              child: ListView.builder(
                itemCount: recommendedList.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context, index) {
                  var product = recommendedList[index];
                  return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailProduct(product: product),
                          ),
                        );
                      },
                      child: ProductCard(product: product));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
