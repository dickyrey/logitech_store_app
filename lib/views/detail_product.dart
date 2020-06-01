import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logitechapp/constants.dart';
import 'package:logitechapp/models/product.dart';

class DetailProduct extends StatefulWidget {
  final Product product;
  DetailProduct({this.product});

  @override
  _DetailProductState createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        backgroundColor: kBlack2Color,
        elevation: 0.0,
        actions: [
          SvgPicture.asset(
            "assets/icons/favorite.svg",
            width: 25.0,
            color: kWhiteColor,
          ),
          SizedBox(width: 18.0),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 435.0,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 400.0,
                      padding: EdgeInsets.symmetric(horizontal: 18.0),
                      decoration: BoxDecoration(
                        color: kBlack2Color,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25.0),
                          bottomRight: Radius.circular(25.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: kBlackColor.withOpacity(.4),
                            offset: Offset(2, 5),
                            blurRadius: 8,
                            spreadRadius: 3,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 25.0),
                          SizedBox(
                            width: 250.0,
                            child: Text(
                              widget.product.name,
                              style: kTitleStyle.copyWith(fontSize: 35.0),
                            ),
                          ),
                          Spacer(),
                          Text("Dpi", style: kH3Style),
                          SizedBox(height: 10.0),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: widget.product.dpi,
                                  style: kSubtitleStyle.copyWith(
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: " MAX",
                                  style: kSubtitleStyle.copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 15.0),
                          Text("Price", style: kH3Style),
                          SizedBox(height: 10.0),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "\$  ",
                                    style:
                                        kTitleStyle.copyWith(fontSize: 13.0)),
                                TextSpan(
                                  text: widget.product.price,
                                  style: kSubtitleStyle.copyWith(
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: " USD",
                                  style: kSubtitleStyle.copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 100.0),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 100.0,
                      right: 0.0,
                      child: Image.asset(
                        widget.product.image,
                        fit: BoxFit.fill,
                        width: 250,
                      ),
                    ),
                    Positioned(
                      bottom: 0.0,
                      left: 100,
                      right: 100,
                      child: Container(
                        height: 70.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: kBlueColor,
                          boxShadow: [
                            BoxShadow(
                              color: kBlueColor.withOpacity(.4),
                              offset: Offset(1, 3),
                              blurRadius: 4,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: IconButton(
                                icon: Icon(
                                  Icons.remove,
                                  color: kWhiteColor,
                                ),
                                onPressed: () {
                                  setState(() {
                                    counter--;
                                  });
                                },
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "$counter",
                                textAlign: TextAlign.center,
                                style: kSubtitleStyle.copyWith(
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              child: IconButton(
                                icon: Icon(
                                  Icons.add,
                                  color: kWhiteColor,
                                ),
                                onPressed: () {
                                  setState(() {
                                    counter++;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 180.0,
                      child: Text(widget.product.name, style: kH2Style),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Color(0xFFFFBA00),
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xFFFFBA00),
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xFFFFBA00),
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xFFFFBA00),
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xFFE5E5E5),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(18),
                child:
                    Text(widget.product.description, style: kDescriptionStyle),
              ),
              SizedBox(height: 70.0),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Row(
          children: [
            Icon(Icons.shopping_cart, color: kWhiteColor),
            SizedBox(width: 12.0),
            Text(
              "Shop Now",
              style: kSubtitleStyle.copyWith(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
