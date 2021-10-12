import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:spicy/Locale/locales.dart';
import 'package:spicy/Routers/routes.dart';
import 'package:spicy/Themes/colors.dart';

class ItemsEdit extends StatefulWidget {
  final String? itemHead;
  final String? prodDescription;
  final String? productCategory;
  ItemsEdit(this.itemHead, this.prodDescription, this.productCategory);

  @override
  _ItemsEditState createState() => _ItemsEditState();
}

class _ItemsEditState extends State<ItemsEdit> {
  int currentPos = 0;
  final List<String> imagesList = [
    "images/fimi-a3-hero.jpg",
    "images/fimi-a3-hero.jpg",
    "images/fimi-a3-hero.jpg",
    "images/fimi-a3-hero.jpg",
    "images/fimi-a3-hero.jpg",
  ];
  var rating = 3.0;
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
              bottom: 90.0,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Container(
                          height: 380,
                          child: CarouselSlider(
                            carouselController: _controller,
                            options: CarouselOptions(
                                autoPlay: true,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    _current = index;
                                  });
                                }),
                            items: imagesList
                                .map(
                                  (item) => Image.asset(
                                    item,
                                    fit: BoxFit.cover,
                                    height: height,
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.arrow_back_ios_outlined,
                                )),
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.favorite_outline_outlined,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: imagesList.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () => _controller.animateToPage(entry.key),
                            child: Container(
                              width: 8.0,
                              height: 8.0,
                              margin: EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 4.0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: (Theme.of(context).brightness ==
                                              Brightness.dark
                                          ? Colors.white
                                          : Colors.black)
                                      .withOpacity(
                                          _current == entry.key ? 0.9 : 0.4)),
                            ),
                          );
                        }).toList(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(widget.itemHead!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                            color: Theme.of(context)
                                                .secondaryHeaderColor)),
                                Text(widget.productCategory!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption!
                                        .copyWith(
                                            color: hintColor, fontSize: 15.0)),
                              ],
                            ),
                            Text(SpicyLocalizations.of(context)!.itemPrice!,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: mainColor))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 12.0),
                              child: RatingBar.builder(
                                unratedColor: iconColor,
                                itemSize: 20.0,
                                initialRating: 3,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: mainColor,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ),
                            Text(
                              widget.prodDescription!,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                      color: lightTextColor, fontSize: 15.0),
                              maxLines: 4,
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding:
                  const EdgeInsets.only(bottom: 20.0, left: 18.0, right: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                        color: circleColor,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, PageRoutes.viewCartPageSite);
                          },
                          icon: Icon(Icons.shopping_cart_outlined,
                              color: mainColor))),
                  SizedBox(
                    width: 200,
                    height: 50,
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, PageRoutes.paymentType);
                      },
                      child: Text(SpicyLocalizations.of(context)!.buyNow!,
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .copyWith(color: whiteColor, fontSize: 20.0)),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
