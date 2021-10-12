import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatefulWidget {
  final Widget? cardChildWidget;
  final Function? onClick;

  ReusableCard({this.cardChildWidget, this.onClick});

  @override
  _ReusableCardState createState() => _ReusableCardState();
}

class _ReusableCardState extends State<ReusableCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _animatecontroller;
  late Animation _animationWidget;

  @override
  void initState() {
    super.initState();
    _animatecontroller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _animationWidget = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(_animatecontroller);
  }

  @override
  void dispose() {
    _animatecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _animatecontroller.forward();
    return GestureDetector(
      onTap: widget.onClick as void Function()?,
      child: FadeTransition(
        opacity: _animationWidget as Animation<double>,
        child: Container(
          child: widget.cardChildWidget,
          padding: EdgeInsets.all(18.3),
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
        ),
      ),
    );
  }
}
