import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocart_shop/Components/custom_appbar.dart';
import 'package:grocart_shop/Locale/locales.dart';
import 'package:grocart_shop/Routes/routes.dart';
import 'package:grocart_shop/Themes/colors.dart';

class ItemsPage extends StatefulWidget {
  @override
  _ItemsPageState createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
  String? stock = "Out of Stock";

  bool inStock = false;

  List<DropdownMenuItem<int>> listDrop = [];
  int? selected;

  void loadData() {
    listDrop = [];
    listDrop.add(DropdownMenuItem(
      child: Text('0.25 kg'),
      value: 1,
    ));
    listDrop.add(DropdownMenuItem(
      child: Text('0.5 kg'),
      value: 2,
    ));
    listDrop.add(DropdownMenuItem(
      child: Text('1 kg'),
      value: 3,
    ));
  }

  @override
  Widget build(BuildContext context) {
    final List<Tab> tabs = <Tab>[
      Tab(text: AppLocalizations.of(context)!.camera),
      Tab(text: AppLocalizations.of(context)!.television!.toUpperCase()),
      Tab(text: AppLocalizations.of(context)!.power!.toUpperCase()),
      Tab(text: AppLocalizations.of(context)!.speaker!.toUpperCase()),
    ];
    loadData();
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: CustomAppBar(
            titleWidget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                    child: Text(
                  AppLocalizations.of(context)!.product!,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kMainTextColor,
                      fontSize: 20),
                )),
              ],
            ),
            bottom: TabBar(
              tabs: tabs,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              isScrollable: true,
              labelColor: kMainColor,
              unselectedLabelColor: kLightTextColor,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 24.0),
            ),
          ),
        ),
        body: TabBarView(
          children: tabs.map((Tab tab) {
            return ListView(
              children: <Widget>[
                Divider(
                  color: Theme.of(context).cardColor,
                  thickness: 6.3,
                ),
                InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, PageRoutes.editItem),
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 20.0, right: 20.0, top: 16.0),
                    child: Stack(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Image.asset(
                              'images/2.png',
                              scale: 7.6,
                            ),
                            SizedBox(
                              width: 25.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(AppLocalizations.of(context)!.action!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold)),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text('\$ 3.50',
                                      style:
                                          Theme.of(context).textTheme.caption),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '$stock',
                                style: TextStyle(
                                    color: kHintColor,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                              Switch(
                                activeColor: kMainColor,
                                activeTrackColor: Colors.grey[200],
                                value: inStock,
                                onChanged: (value) {
                                  setState(() {
                                    inStock = value;
                                  });
                                  if (inStock == true)
                                    stock = AppLocalizations.of(context)!.stock;
                                  else if (inStock == false)
                                    stock =
                                        AppLocalizations.of(context)!.outStock;
                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, PageRoutes.editItem),
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 20.0, right: 20.0, top: 16.0),
                    child: Stack(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Image.asset(
                              'images/4.png',
                              scale: 5.6,
                            ),
                            SizedBox(
                              width: 25.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(AppLocalizations.of(context)!.dslr!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold)),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text('\$ 7.00',
                                      style:
                                          Theme.of(context).textTheme.caption),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '$stock',
                                style: TextStyle(
                                    color: kHintColor,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                              Switch(
                                activeColor: kMainColor,
                                activeTrackColor: Colors.grey[200],
                                value: inStock,
                                onChanged: (value) {
                                  setState(() {
                                    inStock = value;
                                  });
                                  if (inStock == true)
                                    stock = AppLocalizations.of(context)!.stock;
                                  else if (inStock == false)
                                    stock =
                                        AppLocalizations.of(context)!.outStock;
                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, PageRoutes.editItem),
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 20.0, right: 20.0, top: 16.0),
                    child: Stack(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Image.asset(
                              'images/5.png',
                              scale: 8.0,
                            ),
                            SizedBox(
                              width: 25.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(AppLocalizations.of(context)!.mirrorless!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold)),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text('\$ 5.00',
                                      style:
                                          Theme.of(context).textTheme.caption),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '$stock',
                                style: TextStyle(
                                    color: kHintColor,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                              Switch(
                                activeColor: kMainColor,
                                activeTrackColor: Colors.grey[200],
                                value: inStock,
                                onChanged: (value) {
                                  setState(() {
                                    inStock = value;
                                  });
                                  if (inStock == true)
                                    stock = AppLocalizations.of(context)!.stock;
                                  else if (inStock == false)
                                    stock =
                                        AppLocalizations.of(context)!.outStock;
                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, PageRoutes.editItem),
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 20.0, right: 20.0, top: 16.0),
                    child: Stack(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Image.asset(
                              'images/c.png',
                              scale: 8.4,
                            ),
                            SizedBox(
                              width: 25.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(AppLocalizations.of(context)!.film!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold)),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text('\$ 4.00',
                                      style:
                                          Theme.of(context).textTheme.caption),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '$stock',
                                style: TextStyle(
                                    color: kHintColor,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                              Switch(
                                activeColor: kMainColor,
                                activeTrackColor: Colors.grey[200],
                                value: inStock,
                                onChanged: (value) {
                                  setState(() {
                                    inStock = value;
                                  });
                                  if (inStock == true)
                                    stock = AppLocalizations.of(context)!.stock;
                                  else if (inStock == false)
                                    stock =
                                        AppLocalizations.of(context)!.outStock;
                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, PageRoutes.editItem),
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 20.0, right: 20.0, top: 16.0),
                    child: Stack(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Image.asset(
                              'images/3.png',
                              scale: 6.5,
                            ),
                            SizedBox(
                              width: 25.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(AppLocalizations.of(context)!.bridge!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold)),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text('\$ 6.00',
                                      style:
                                          Theme.of(context).textTheme.caption),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '$stock',
                                style: TextStyle(
                                    color: kHintColor,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                              Switch(
                                activeColor: kMainColor,
                                activeTrackColor: Colors.grey[200],
                                value: inStock,
                                onChanged: (value) {
                                  setState(() {
                                    inStock = value;
                                  });
                                  if (inStock == true)
                                    stock = AppLocalizations.of(context)!.stock;
                                  else if (inStock == false)
                                    stock =
                                        AppLocalizations.of(context)!.outStock;
                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, PageRoutes.editItem),
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 20.0, right: 20.0, top: 16.0),
                    child: Stack(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Image.asset(
                              'images/4.png',
                              scale: 5.2,
                            ),
                            SizedBox(
                              width: 25.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(AppLocalizations.of(context)!.compact!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold)),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text('\$ 7.00',
                                      style:
                                          Theme.of(context).textTheme.caption),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '$stock',
                                style: TextStyle(
                                    color: kHintColor,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                              Switch(
                                activeColor: kMainColor,
                                activeTrackColor: Colors.grey[200],
                                value: inStock,
                                onChanged: (value) {
                                  setState(() {
                                    inStock = value;
                                  });
                                  if (inStock == true)
                                    stock = AppLocalizations.of(context)!.stock;
                                  else if (inStock == false)
                                    stock =
                                        AppLocalizations.of(context)!.outStock;
                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, PageRoutes.editItem),
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 20.0, right: 20.0, top: 16.0),
                    child: Stack(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Image.asset(
                              'images/5.png',
                              scale: 7.6,
                            ),
                            SizedBox(
                              width: 25.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(AppLocalizations.of(context)!.mirrorless!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold)),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text('\$ 5.00',
                                      style:
                                          Theme.of(context).textTheme.caption),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '$stock',
                                style: TextStyle(
                                    color: kHintColor,
                                    fontSize: 10.3,
                                    fontWeight: FontWeight.bold),
                              ),
                              Switch(
                                activeColor: kMainColor,
                                activeTrackColor: Colors.grey[200],
                                value: inStock,
                                onChanged: (value) {
                                  setState(() {
                                    inStock = value;
                                  });
                                  if (inStock == true)
                                    stock = AppLocalizations.of(context)!.stock;
                                  else if (inStock == false)
                                    stock =
                                        AppLocalizations.of(context)!.outStock;
                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, PageRoutes.editItem),
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 20.0, right: 20.0, top: 16.0),
                    child: Stack(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Image.asset(
                              'images/3.png',
                              scale: 6.3,
                            ),
                            SizedBox(
                              width: 25.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(AppLocalizations.of(context)!.bridge!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold)),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text('\$ 6.00',
                                      style:
                                          Theme.of(context).textTheme.caption),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '$stock',
                                style: TextStyle(
                                    color: kHintColor,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                              Switch(
                                activeColor: kMainColor,
                                activeTrackColor: Colors.grey[200],
                                value: inStock,
                                onChanged: (value) {
                                  setState(() {
                                    inStock = value;
                                  });
                                  if (inStock == true)
                                    stock = AppLocalizations.of(context)!.stock;
                                  else if (inStock == false)
                                    stock =
                                        AppLocalizations.of(context)!.outStock;
                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }).toList(),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kMainColor,
          onPressed: () => Navigator.pushNamed(context, PageRoutes.addItem),
          tooltip: AppLocalizations.of(context)!.add,
          child: Icon(
            Icons.add,
            size: 27,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
