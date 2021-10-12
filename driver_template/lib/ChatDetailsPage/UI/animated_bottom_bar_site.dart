import 'package:flutter/material.dart';
import 'package:delivery_app/ThemeSite/colors_site.dart';

class AnimatedBottomBarSite extends StatefulWidget {
  final List<BarItemList>? itemBarType;
  final Function? onItemBarTap;

  AnimatedBottomBarSite({
    this.itemBarType,
    this.onItemBarTap,
  });

  @override
  _AnimatedBottomBarSiteState createState() => _AnimatedBottomBarSiteState();
}

class _AnimatedBottomBarSiteState extends State<AnimatedBottomBarSite>
    with TickerProviderStateMixin {
  int selectItemBarIndexValue = 0;
  Duration timeDuration = Duration(milliseconds: 250);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10.0,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: _buildBarItems(),
        ),
      ),
    );
  }

  List<Widget> _buildBarItems() {
    List<Widget> _barItemSite = [];
    for (int i = 0; i < widget.itemBarType!.length; i++) {
      BarItemList item = widget.itemBarType![i];
      bool onSelectType = selectItemBarIndexValue == i;
      _barItemSite.add(InkWell(
        splashColor: Colors.transparent,
        onTap: () {
          setState(() {
            selectItemBarIndexValue = i;
            widget.onItemBarTap!(selectItemBarIndexValue);
          });
        },
        child: AnimatedContainer(
          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
          duration: timeDuration,
          decoration: BoxDecoration(
              color: onSelectType
                  ? mainColor.withOpacity(0.075)
                  : Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: Row(
            children: <Widget>[
              ImageIcon(
                AssetImage(item.photo!),
                color: onSelectType
                    ? mainColor
                    : Theme.of(context).secondaryHeaderColor,
              ),
              SizedBox(
                width: 10.0,
              ),
              AnimatedSize(
                duration: timeDuration,
                curve: Curves.easeInOut,
                child: Text(
                  onSelectType ? item.typeOText! : "",
                  style: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ));
    }
    return _barItemSite;
  }
}

class BarItemList {
  String? typeOText;
  String? photo;

  BarItemList({this.typeOText, this.photo});
}
