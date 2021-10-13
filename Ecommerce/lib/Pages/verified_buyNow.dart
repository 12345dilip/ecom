import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:spicy/Locale/locales.dart';
import 'package:spicy/Routers/routes.dart';
import 'package:spicy/Themes/colors.dart';

class Method {
  final String image;
  final String title;
  final String price;

  Method(this.image, this.title, this.price);
}

class Reach {
  final String title;
  Reach(this.title);
}

class Bottom extends StatefulWidget {
  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int methodIndex = 0;
  int timeIndex = 0;
  int _productCount2 = 1;

  bool selectRed = false;
  bool selectGreen = false;
  bool selectPink = false;
  bool selectBlue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420,
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        SizedBox(height: 20),
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Container(
            color: Colors.grey.shade400,
            height: 8.0,
            width: 80.0,
          ),
        ),
        SizedBox(height: 30),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image.asset(
                  'images/trone20.jpg',
                  scale: 15.5,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0, left: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    SpicyLocalizations.of(context)!.droneCam!,
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  Text(
                    '\$ 480.00',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: mainColor),
                  ),
                ],
              ),
            ),
          ],
        ),
        cartOrderItemListTile(
            context,
            'Quantity',
            _productCount2,
            () => setState(() => _productCount2--),
            () => setState(() => _productCount2++)),
        Divider(
          color: Theme.of(context).cardColor,
          thickness: 6.7,
        ),
        SizedBox(height: 25),
        Row(children: [
          SizedBox(width: 20),
          Text(
            "Color",
            style: Theme.of(context)
                .textTheme
                .caption!
                .copyWith(fontWeight: FontWeight.bold, fontSize: 18.0),
          ),
          SizedBox(
            width: 20.0,
          ),
          Text(
            "Skiftebo Yellow",
            style: Theme.of(context).textTheme.caption!.copyWith(
                fontWeight: FontWeight.bold, fontSize: 18.0, color: subColor),
          )
        ]),
        FadedScaleAnimation(
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
            child: Row(
              children: <Widget>[
                InkWell(
                    onTap: () {
                      setState(() {
                        selectRed = !selectRed;
                        selectBlue = false;
                        selectGreen = false;
                        selectPink = false;
                      });
                    },
                    child: selectRed
                        ? Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: iconColor, width: 5),
                                color: Colors.red,
                                shape: BoxShape.circle),
                            width: 40,
                            height: 40,
                            margin: EdgeInsets.all(5),
                          )
                        : Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 5),
                                color: Colors.red,
                                shape: BoxShape.circle),
                            width: 40,
                            height: 40,
                            margin: EdgeInsets.all(5),
                          )),
                InkWell(
                    onTap: () {
                      setState(() {
                        selectGreen = !selectGreen;
                        selectRed = false;
                        selectBlue = false;
                        selectPink = false;
                      });
                    },
                    child: selectGreen
                        ? Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: iconColor, width: 5),
                                color: Colors.green,
                                shape: BoxShape.circle),
                            width: 40,
                            height: 40,
                            margin: EdgeInsets.all(5),
                          )
                        : Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 5),
                                color: Colors.green,
                                shape: BoxShape.circle),
                            width: 40,
                            height: 40,
                            margin: EdgeInsets.all(5),
                          )),
                InkWell(
                    onTap: () {
                      setState(() {
                        selectPink = !selectPink;
                        selectBlue = false;
                        selectGreen = false;
                        selectRed = false;
                      });
                    },
                    child: selectPink
                        ? Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: iconColor, width: 5),
                                color: Colors.yellow,
                                shape: BoxShape.circle),
                            width: 40,
                            height: 40,
                            margin: EdgeInsets.all(5),
                          )
                        : Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 5),
                                color: Colors.yellow,
                                shape: BoxShape.circle),
                            width: 40,
                            height: 40,
                            margin: EdgeInsets.all(5),
                          )),
                InkWell(
                    onTap: () {
                      setState(() {
                        selectBlue = !selectBlue;
                        selectRed = false;
                        selectGreen = false;
                        selectPink = false;
                      });
                    },
                    child: selectBlue
                        ? Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: iconColor, width: 5),
                                color: Colors.blue,
                                shape: BoxShape.circle),
                            width: 40,
                            height: 40,
                            margin: EdgeInsets.all(5),
                          )
                        : Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 5),
                                color: Colors.blue,
                                shape: BoxShape.circle),
                            width: 40,
                            height: 40,
                            margin: EdgeInsets.all(5),
                          )),
              ],
            ),
          ),
          durationInMilliseconds: 800,
        ),
        Spacer(),
        Container(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
          height: 65,
          width: 1000,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: BorderSide(
                color: mainColor,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, PageRoutes.paymentType);
            },
            child: Text(
              'Add to Cart',
              style: TextStyle(color: mainColor, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ]),
    );
  }

  Column cartOrderItemListTile(
    BuildContext context,
    String heading,
    int productCount,
    Function subOnPressed,
    Function addOnPressed,
  ) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    flex: 10,
                    child: Text(
                      heading,
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                          color: Theme.of(context).secondaryHeaderColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      InkWell(
                        onTap: (productCount > 0)
                            ? subOnPressed as void Function()?
                            : null,
                        child: Icon(
                          Icons.remove,
                          color: mainColor,
                          size: 20.0,
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Container(
                        height: 33.0,
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: iconColor),
                        ),
                        child: Center(
                          child: Text(productCount.toString(),
                              style: Theme.of(context).textTheme.caption),
                        ),
                      ),
                      SizedBox(width: 8.0),
                      InkWell(
                        onTap: addOnPressed as void Function()?,
                        child: Icon(
                          Icons.add,
                          color: mainColor,
                          size: 20.0,
                        ),
                      ),
                    ],
                  ),
                ]),
          ),
        )
      ],
    );
  }
}
