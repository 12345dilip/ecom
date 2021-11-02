import 'package:flutter/material.dart';
import 'package:grocart_delivery/ThemeColors/colors.dart';

class AnimatedBottomBar extends StatefulWidget {
  final List<BarItem>? barItemsList;
  final Function? onBarpress;

  AnimatedBottomBar({
    this.barItemsList,
    this.onBarpress,
  });

  @override
  _AnimatedBottomBarState createState() => _AnimatedBottomBarState();
}

class _AnimatedBottomBarState extends State<AnimatedBottomBar>
    with TickerProviderStateMixin {
  int selectIndex = 0;
  Duration timings = Duration(milliseconds: 250);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10.0,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        color: whiteColor,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: _buildBarItems(),
        ),
      ),
    );
  }

  List<Widget> _buildBarItems() {
    List<Widget> _barBuild = [];
    for (int i = 0; i < widget.barItemsList!.length; i++) {
      BarItem itemList = widget.barItemsList![i];
      bool selected = selectIndex == i;
      _barBuild.add(InkWell(
        splashColor: Colors.transparent,
        onTap: () {
          setState(() {
            selectIndex = i;
            widget.onBarpress!(selectIndex);
          });
        },
        child: AnimatedContainer(
          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
          duration: timings,
          decoration: BoxDecoration(
              color:
                  selected ? whiteColor.withOpacity(0.3) : Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: Row(
            children: <Widget>[
              ImageIcon(
                AssetImage(itemList.photo!),
                color: selected ? mainColor : mainTextColor,
                //Theme.of(context).secondaryHeaderColor,
              ),
              SizedBox(
                width: 10.0,
              ),
              AnimatedSize(
                duration: timings,
                curve: Curves.easeInOut,
                child: Text(
                  selected ? itemList.head! : "",
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ));
    }
    return _barBuild;
  }
}

class BarItem {
  String? head;
  String? photo;

  BarItem({this.head, this.photo});
}
