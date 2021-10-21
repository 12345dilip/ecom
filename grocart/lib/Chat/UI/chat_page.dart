import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocart/Components/custom_appbar.dart';
import 'package:grocart/Components/entry_field.dart';
import 'package:grocart/Locale/locales.dart';
import 'package:grocart/Themes/colors.dart';
import 'package:grocart/Themes/theme_colors.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChatWidget();
  }
}

class ChatWidget extends StatefulWidget {
  @override
  _ChatWidgetState createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  TextEditingController _message = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _message.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).cardColor,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(144.0),
            child: CustomAppBar(
              leading: IconButton(
                icon: Hero(
                  tag: 'arrow',
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    size: 30,
                  ),
                ),
                onPressed: () => Navigator.pop(context),
              ),
              bottomSide: PreferredSize(
                preferredSize: Size.fromHeight(0.0),
                child: Hero(
                  tag: 'Delivery Boy',
                  child: Container(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    child: ListTile(
                      leading: FadedScaleAnimation(
                        CircleAvatar(
                          radius: 22.0,
                          backgroundImage: AssetImage('images/profile.jpg'),
                        ),
                        durationInMilliseconds: 800,
                      ),
                      title: Text(
                        'Scarlet Johnson',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      subtitle: Text(
                        'Delivery Partner',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontSize: 11.7,
                            color: Color(0xffc2c2c2),
                            fontWeight: FontWeight.w500),
                      ),
                      trailing: FadedScaleAnimation(
                        IconButton(
                          icon: Icon(Icons.phone, color: mainColor),
                          onPressed: () {
                            /*.........*/
                          },
                        ),
                        durationInMilliseconds: 800,
                      ),
                    ),
                  ),
                ),
              ),
            )),
        body: Stack(
          children: [
            Opacity(
              opacity: 0.15,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'images/map1.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                MessageStream(),
                Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: EntryField(
                    textEditController: _message,
                    hintText: GrocartLocalizations.of(context)!.enterMessage,
                    endIcon: IconButton(
                      icon: Icon(
                        Icons.send,
                        color: mainColor,
                      ),
                      onPressed: () {
                        _message.clear();
                      },
                    ),
                    borderWidget: InputBorder.none,
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

class MessageStream extends StatelessWidget {
  final List<MessageBubble> bubbles = [
    MessageBubble(
      sendPartner: 'delivery_partner',
      textItem: 'Hey there?\nHow much time?',
      clock: '11:59 am',
      delivered: false,
      me: true,
    ),
    MessageBubble(
      sendPartner: 'user',
      textItem: 'On my way ma’m.\nWill reach in 10 mins.',
      clock: '11:58 am',
      delivered: false,
      me: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: bubbles,
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final bool? me;
  final String? textItem;
  final String? sendPartner;
  final String? clock;
  final bool? delivered;

  MessageBubble(
      {this.sendPartner, this.textItem, this.clock, this.me, this.delivered});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment:
            me! ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          Material(
            elevation: 4.0,
            color: me! ? mainColor : Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(6.0),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
              child: Column(
                crossAxisAlignment:
                    me! ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    textItem!,
                    textAlign: TextAlign.right,
                    style: me!
                        ? bottomBarTextStyle.copyWith()
                        : Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(fontSize: 15.0),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        clock!,
                        style: TextStyle(
                          fontSize: 10.0,
                          color: me!
                              ? whiteColor.withOpacity(0.75)
                              : lightTextColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
