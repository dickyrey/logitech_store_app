import 'package:flutter/material.dart';
import 'package:logitechapp/constants.dart';
import 'package:logitechapp/models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  ProductCard({this.product});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      margin: EdgeInsets.only(right: 15.0),
      padding: EdgeInsets.all(18.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: kBlack2Color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 150,
            child: Text(product.name, style: kTitleStyle),
          ),
          Expanded(
            child: Center(
              child: Image.asset(
                product.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text("Price", style: kH3Style),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: "\$  ", style: kTitleStyle.copyWith(fontSize: 13.0)),
                TextSpan(text: product.price, style: kTitleStyle),
              ],
            ),
          )
        ],
      ),
    );
  }
}
