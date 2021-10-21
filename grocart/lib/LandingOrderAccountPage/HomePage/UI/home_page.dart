import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocart/LandingOrderAccountPage/HomePage/Models/category.dart';
import 'package:grocart/Pages/items_edit.dart';
import 'package:grocart/Pages/items_list.dart';
import 'package:grocart/Locale/locales.dart';
import 'package:grocart/Routers/routes.dart';
import 'package:grocart/Themes/colors.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final offerBanner = [
      'images/Banners/titan.jpg',
      'images/Banners/titan.jpg',
    ];
    final List<Category> foodCategories = [
      Category('images/Categories/1 (3).png',
          GrocartLocalizations.of(context)!.drone!.toUpperCase()),
      Category('images/Categories/11 (1).png',
          GrocartLocalizations.of(context)!.headSet!.toUpperCase()),
      Category('images/Categories/3 (1).png',
          GrocartLocalizations.of(context)!.tv!.toUpperCase()),
      Category(
        'images/Categories/4 (2).png',
        GrocartLocalizations.of(context)!.powerBank!.toUpperCase(),
      ),
      Category('images/Categories/5 (2).png',
          GrocartLocalizations.of(context)!.speaker!.toUpperCase()),
      Category('images/Categories/2 (1).png',
          GrocartLocalizations.of(context)!.laptop!.toUpperCase()),
      Category('images/Categories/6.png',
          GrocartLocalizations.of(context)!.watch!.toUpperCase()),
      Category('images/Categories/7.png',
          GrocartLocalizations.of(context)!.mobile!.toUpperCase()),
      Category('images/Categories/8.png',
          GrocartLocalizations.of(context)!.play!.toUpperCase()),
      Category('images/Categories/9.png',
          GrocartLocalizations.of(context)!.monitor!.toUpperCase()),
      Category('images/Categories/10 (1).png',
          GrocartLocalizations.of(context)!.micro!.toUpperCase()),
      Category('images/Categories/12 (1).png',
          GrocartLocalizations.of(context)!.penDrive!.toUpperCase()),
    ];

    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
        leading: Icon(Icons.grid_view_outlined, color: mainColor),
        actions: <Widget>[
          FadedScaleAnimation(
            IconButton(
              icon: Icon(
                Icons.search,
                color: mainColor,
              ),
              onPressed: () {
                /*.......*/
              },
            ),
            durationInMilliseconds: 200,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 4.0),
            child: FadedScaleAnimation(
              IconButton(
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: mainColor,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, PageRoutes.viewCartPageSite);
                },
              ),
              durationInMilliseconds: 200,
            ),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 18.0, bottom: 10.0, right: 18.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                GrocartLocalizations.of(context)!.homeText2!,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontSize: 16.3,
                    color: Theme.of(context).secondaryHeaderColor,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                GrocartLocalizations.of(context)!.offersYou!,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: iconColor, fontSize: 12.0),
              ),
            ]),
          ),
          Container(
            height: 136,
            padding: EdgeInsets.only(left: 18, right: 15),
            child: ListView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: offerBanner.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 18.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image.asset(
                          offerBanner[index],
                          scale: 3,
                        ),
                      ),
                    ),
                  );
                }),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: 10.0, bottom: 10.0, left: 18.0, right: 18.0),
            child: Row(
              children: [
                Text(
                  GrocartLocalizations.of(context)!.homeText1!,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 15.0),
                ),
                Spacer(),
              ],
            ),
          ),
          Container(
            height: 63.3,
            margin: EdgeInsets.only(left: 18, right: 18),
            child: ListView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: foodCategories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ItemsListPage(
                                      foodCategories[index].heading))),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Container(
                              height: 63.3,
                              width: 50.3,
                              color: categoryBackround,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  FadedScaleAnimation(
                                    Image.asset(
                                      foodCategories[index].photo,
                                      height: 27.3,
                                      width: 31.3,
                                    ),
                                    durationInMilliseconds: 200,
                                  ),
                                  SizedBox(
                                    height: 7.0,
                                  ),
                                  Text(
                                    foodCategories[index].heading!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption!
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: mainTextColor,
                                            fontSize: 8.0),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: EdgeInsets.only(left: 18, bottom: 10, right: 18),
            child: Row(
              children: [
                Text(
                  GrocartLocalizations.of(context)!.flashSale!,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 15.0,
                      ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ItemsListPage(
                            GrocartLocalizations.of(context)!.flashSale!,
                          ),
                        ));
                  },
                  child: Text(
                    GrocartLocalizations.of(context)!.seeAll!,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: mainColor, fontSize: 10.0),
                  ),
                ),
              ],
            ),
          ),
          Container(
              height: 190,
              margin: const EdgeInsets.only(left: 18.0, right: 18.0),
              child: GridView.count(
                crossAxisCount: 1,
                mainAxisSpacing: 5,
                crossAxisSpacing: 20,
                childAspectRatio: 1.19,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  Card(
                    elevation: 3.0,
                    color: whiteColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: FadedScaleAnimation(
                      quickGrid(
                        context,
                        "images/stand14.jpg",
                        GrocartLocalizations.of(context)!.lens!,
                        GrocartLocalizations.of(context)!.drone!,
                        GrocartLocalizations.of(context)!.desCam!,
                      ),
                      durationInMilliseconds: 200,
                    ),
                  ),
                  Card(
                    elevation: 3.0,
                    color: whiteColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: FadedScaleAnimation(
                      quickGrid(
                        context,
                        "images/mic 19.jpg",
                        GrocartLocalizations.of(context)!.mike!,
                        GrocartLocalizations.of(context)!.speaker!,
                        GrocartLocalizations.of(context)!.desMic!,
                      ),
                      durationInMilliseconds: 200,
                    ),
                  ),
                  Card(
                    elevation: 3.0,
                    color: whiteColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: FadedScaleAnimation(
                      quickGrid(
                        context,
                        "images/iron.jpg",
                        GrocartLocalizations.of(context)!.ironBox!,
                        GrocartLocalizations.of(context)!.ironBox!,
                        GrocartLocalizations.of(context)!.desIron!,
                      ),
                      durationInMilliseconds: 200,
                    ),
                  ),
                  Card(
                    elevation: 3.0,
                    color: whiteColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: FadedScaleAnimation(
                      quickGrid(
                        context,
                        "images/trone20.jpg",
                        GrocartLocalizations.of(context)!.droneCam!,
                        GrocartLocalizations.of(context)!.drone!,
                        GrocartLocalizations.of(context)!.desDrone!,
                      ),
                      durationInMilliseconds: 200,
                    ),
                  ),
                  Card(
                    elevation: 3.0,
                    color: whiteColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: FadedScaleAnimation(
                      quickGrid(
                        context,
                        "images/ac.jpg",
                        GrocartLocalizations.of(context)!.ac!,
                        GrocartLocalizations.of(context)!.desAC!,
                        GrocartLocalizations.of(context)!.desAC!,
                      ),
                      durationInMilliseconds: 200,
                    ),
                  ),
                  Card(
                    elevation: 3.0,
                    color: whiteColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: FadedScaleAnimation(
                      quickGrid(
                        context,
                        "images/table fan.jpg",
                        GrocartLocalizations.of(context)!.fan!,
                        GrocartLocalizations.of(context)!.desFan!,
                        GrocartLocalizations.of(context)!.desFan!,
                      ),
                      durationInMilliseconds: 200,
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18,
              bottom: 10,
              right: 18,
            ),
            child: Row(
              children: [
                Text(
                  GrocartLocalizations.of(context)!.recentViews!,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 15.0),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ItemsListPage(
                            GrocartLocalizations.of(context)!.recentViews!,
                          ),
                        ));
                  },
                  child: Text(
                    GrocartLocalizations.of(context)!.seeAll!,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: mainColor, fontSize: 10.0),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 190,
            margin:
                const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 10.0),
            child: GridView.count(
              crossAxisCount: 1,
              mainAxisSpacing: 5,
              crossAxisSpacing: 20,
              childAspectRatio: 1.19,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                Card(
                  elevation: 3.0,
                  color: whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: FadedScaleAnimation(
                    quickGrid(
                      context,
                      "images/headset 17.jpg",
                      GrocartLocalizations.of(context)!.headBluetooth!,
                      GrocartLocalizations.of(context)!.headSet!,
                      GrocartLocalizations.of(context)!.desHeadset!,
                    ),
                    durationInMilliseconds: 200,
                  ),
                ),
                Card(
                  elevation: 3.0,
                  color: whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: FadedScaleAnimation(
                    quickGrid(
                      context,
                      "images/joy 18.jpg",
                      GrocartLocalizations.of(context)!.playStation!,
                      GrocartLocalizations.of(context)!.play!,
                      GrocartLocalizations.of(context)!.desPlay!,
                    ),
                    durationInMilliseconds: 200,
                  ),
                ),
                Card(
                  elevation: 3.0,
                  color: whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: FadedScaleAnimation(
                    quickGrid(
                      context,
                      "images/laptop.jpg",
                      GrocartLocalizations.of(context)!.brandInLap!,
                      GrocartLocalizations.of(context)!.laptop!,
                      GrocartLocalizations.of(context)!.desLap!,
                    ),
                    durationInMilliseconds: 200,
                  ),
                ),
                Card(
                  elevation: 3.0,
                  color: whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: FadedScaleAnimation(
                    quickGrid(
                      context,
                      "images/mobile.jpg",
                      GrocartLocalizations.of(context)!.electronics!,
                      GrocartLocalizations.of(context)!.mobile!,
                      GrocartLocalizations.of(context)!.desMobile!,
                    ),
                    durationInMilliseconds: 200,
                  ),
                ),
                Card(
                  elevation: 3.0,
                  color: whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: FadedScaleAnimation(
                    quickGrid(
                      context,
                      "images/monitor.jpg",
                      GrocartLocalizations.of(context)!.brandInTv!,
                      GrocartLocalizations.of(context)!.tv!,
                      GrocartLocalizations.of(context)!.desTV!,
                    ),
                    durationInMilliseconds: 200,
                  ),
                ),
                Card(
                  elevation: 3.0,
                  color: whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: FadedScaleAnimation(
                    quickGrid(
                      context,
                      "images/coffe machine.jpg",
                      GrocartLocalizations.of(context)!.coffee!,
                      GrocartLocalizations.of(context)!.desCoffee!,
                      GrocartLocalizations.of(context)!.desCoffee!,
                    ),
                    durationInMilliseconds: 200,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget quickGrid(BuildContext context, String photo, String productTitle,
      String prodCategory, String description) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  ItemsEdit(productTitle, description, prodCategory),
            ));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                child: Image(
                  image: AssetImage(
                    photo,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2.0, right: 2.0, top: 3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Container(
                        width: 60,
                        decoration: new BoxDecoration(
                          color: whiteColor,
                          shape: BoxShape.rectangle,
                        ),
                        child: Center(
                          child: Text(
                            '30 % OFF',
                            style:
                                TextStyle(color: mainTextColor, fontSize: 10.0),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 18.0,
                      height: 18.0,
                      decoration: new BoxDecoration(
                        color: whiteColor,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.favorite_outline,
                        color: mainTextColor,
                        size: 15.0,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 15.0, top: 5.0),
            child: Text(productTitle,
                maxLines: 1,
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: Theme.of(context).secondaryHeaderColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 13)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(prodCategory,
                maxLines: 1,
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: lightTextColor, fontSize: 10.0)),
          ),
          SizedBox(height: 2.0),
          Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
            ),
            child: Row(
              children: [
                Text('\$ 1500 ',
                    style: Theme.of(context).textTheme.caption!.copyWith(
                          color: mainTextColor,
                          fontSize: 11.0,
                          fontWeight: FontWeight.bold,
                        )),
                SizedBox(width: 5.0),
                Text('\$ 2500 ',
                    style: Theme.of(context).textTheme.caption!.copyWith(
                        color: lightTextColor,
                        fontSize: 11.0,
                        decoration: TextDecoration.lineThrough)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
