import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:spicy/Locale/locales.dart';
import 'package:spicy/Pages/items_edit.dart';
import 'package:spicy/Themes/colors.dart';

class ItemsListPage extends StatefulWidget {
  final String? productName;
  final bool book;
  ItemsListPage(this.productName, [this.book = false]);

  @override
  _ItemsListPageState createState() => _ItemsListPageState();
}

class _ItemsListPageState extends State<ItemsListPage> {
  TextStyle activeTabLabelStyle = new TextStyle(fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    var appLocalization = SpicyLocalizations.of(context)!;
    final List<Tab> tabsCategory = <Tab>[
      Tab(text: appLocalization.trending),
      Tab(text: appLocalization.popular!.toUpperCase()),
      Tab(text: appLocalization.recoment!.toUpperCase()),
    ];
    return Material(
        child: Stack(children: <Widget>[
      DefaultTabController(
        length: tabsCategory.length,
        child: Scaffold(
          backgroundColor: Theme.of(context).cardColor,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(150.0),
            child: AppBar(
              backgroundColor: Theme.of(context).cardColor,
              leading: IconButton(
                icon: Icon(
                  Icons.grid_view_outlined,
                  color: mainColor,
                ),
                onPressed: () {},
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: FadedScaleAnimation(
                    Icon(
                      Icons.search,
                      size: 19.5,
                      color: mainColor,
                    ),
                    durationInMilliseconds: 800,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: FadedScaleAnimation(
                    Icon(
                      Icons.shopping_cart_outlined,
                      color: mainColor,
                    ),
                    durationInMilliseconds: 800,
                  ),
                )
              ],
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(0.0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(widget.productName!,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  color:
                                      Theme.of(context).secondaryHeaderColor)),
                      SizedBox(
                        height: 8,
                      ),
                      TabBar(
                        tabs: tabsCategory,
                        isScrollable: true,
                        labelColor: mainColor,
                        labelStyle: activeTabLabelStyle,
                        unselectedLabelColor: lightTextColor,
                        indicatorPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: tabsCategory.map((Tab tab) {
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 18,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    children: [
                      Card(
                        color: whiteColor,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: quickGrid(
                          context,
                          "images/mic 19.jpg",
                          SpicyLocalizations.of(context)!.mike!,
                          SpicyLocalizations.of(context)!.desMic!,
                          SpicyLocalizations.of(context)!.speaker!,
                        ),
                      ),
                      Card(
                        color: whiteColor,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: quickGrid(
                          context,
                          "images/trone20.jpg",
                          SpicyLocalizations.of(context)!.drone!,
                          SpicyLocalizations.of(context)!.desDrone!,
                          SpicyLocalizations.of(context)!.drone!,
                        ),
                      ),
                      Card(
                        color: whiteColor,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: quickGrid(
                          context,
                          "images/iron.jpg",
                          SpicyLocalizations.of(context)!.ironBox!,
                          SpicyLocalizations.of(context)!.desIron!,
                          SpicyLocalizations.of(context)!.ironBox!,
                        ),
                      ),
                      Card(
                        color: whiteColor,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: quickGrid(
                          context,
                          "images/stand14.jpg",
                          SpicyLocalizations.of(context)!.lens!,
                          SpicyLocalizations.of(context)!.desCam!,
                          SpicyLocalizations.of(context)!.drone!,
                        ),
                      ),
                      Card(
                        color: whiteColor,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: quickGrid(
                          context,
                          "images/headset 17.jpg",
                          SpicyLocalizations.of(context)!.headBluetooth!,
                          SpicyLocalizations.of(context)!.desHeadset!,
                          SpicyLocalizations.of(context)!.headSet!,
                        ),
                      ),
                      Card(
                        color: whiteColor,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: quickGrid(
                          context,
                          "images/joy 18.jpg",
                          SpicyLocalizations.of(context)!.playStation!,
                          SpicyLocalizations.of(context)!.desPlay!,
                          SpicyLocalizations.of(context)!.play!,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      )
    ]));
  }

  Widget quickGrid(BuildContext context, String photo, String productTitle,
      String prodDescription, String prodCategory) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  ItemsEdit(productTitle, prodDescription, prodCategory),
            ));
      },
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Image(
                    image: AssetImage(
                      photo,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 5.0, right: 5.0, top: 3.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: new BoxDecoration(
                          color: whiteColor,
                          shape: BoxShape.rectangle,
                        ),
                        child: Text(
                          '30 % OFF',
                          style:
                              TextStyle(color: mainTextColor, fontSize: 10.0),
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
                          size: 15.0,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            //SizedBox(width: 13.3),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 8.0),
              child: Text(productTitle,
                  maxLines: 1,
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: Theme.of(context).secondaryHeaderColor,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(prodCategory,
                  maxLines: 1,
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: lightTextColor, fontSize: 10.0)),
            ),
            SizedBox(height: 5.0),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
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
      ),
    );
  }
}
