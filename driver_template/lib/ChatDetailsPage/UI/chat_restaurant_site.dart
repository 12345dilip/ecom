import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:delivery_app/Components/custom_appbar_site.dart';
import 'package:delivery_app/Components/entry_field_site.dart';
import 'package:delivery_app/Locale/locales.dart';
import 'package:delivery_app/ThemeSite/colors_site.dart';
import 'package:delivery_app/ThemeSite/style_theme.dart';

class ChatRestaurantSite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChatWidgetPage();
  }
}

class ChatWidgetPage extends StatefulWidget {
  @override
  _ChatWidgetPageState createState() => _ChatWidgetPageState();
}

class _ChatWidgetPageState extends State<ChatWidgetPage> {
  TextEditingController _chatmessageController = TextEditingController();
  //ChatBloc _chatBloc;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _chatmessageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(144.0),
            child: CustomAppBarSite(
              begining: IconButton(
                icon: Hero(
                  tag: 'arrow',
                  child: Icon(Icons.keyboard_arrow_down),
                ),
                onPressed: () => Navigator.pop(context),
              ),
              below: PreferredSize(
                preferredSize: Size.fromHeight(0.0),
                child: Hero(
                  tag: 'Delivery Boy',
                  child: Container(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.location_on,
                        color: mainColor,
                      ),
                      title: Text(
                        AppLocalizations.of(context)!.shopName!,
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      subtitle: Text(
                        'Restaurant',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontSize: 11.7,
                            color: Color(0xffc2c2c2),
                            fontWeight: FontWeight.w500),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.phone, color: mainColor),
                        onPressed: () {
                          /*.........*/
                        },
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
                child: Image.asset(
                  'images/map1.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                MessageInput(),
                Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: EntryFieldSite(
                    entryFieldController: _chatmessageController,
                    hintText: AppLocalizations.of(context)!.typeToMessage,
                    endIcon: IconButton(
                      icon: Icon(
                        Icons.send,
                        color: mainColor,
                      ),
                      onPressed: () {
                        _chatmessageController.clear();
                      },
                    ),
                    borderLine: InputBorder.none,
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

class MessageInput extends StatelessWidget {
  final List<ChatMessageBubble> messageStreaming = [
    ChatMessageBubble(
      deliver: 'delivery_partner',
      typeOfText: 'Hey there?\nHow much time?',
      timeDuration: '11:59 am',
      deliveryDone: false,
      iAm: false,
    ),
    ChatMessageBubble(
      deliver: 'user',
      typeOfText: 'On my way ma’m.\nWill reach in 10 mins.',
      timeDuration: '11:58 am',
      deliveryDone: false,
      iAm: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: messageStreaming,
      ),
    );
  }
}

class ChatMessageBubble extends StatelessWidget {
  final bool? iAm;
  final String? typeOfText;
  final String? deliver;
  final String? timeDuration;
  final bool? deliveryDone;

  ChatMessageBubble(
      {this.deliver,
      this.typeOfText,
      this.timeDuration,
      this.iAm,
      this.deliveryDone});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment:
            iAm! ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          Material(
            elevation: 4.0,
            color: iAm! ? mainColor : Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(6.0),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
              child: Column(
                crossAxisAlignment:
                    iAm! ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    typeOfText!,
                    style: iAm!
                        ? bottomBarTextStyle
                        : Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(fontSize: 15.0),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        timeDuration!,
                        style: TextStyle(
                          fontSize: 10.0,
                          color: iAm!
                              ? whiteColor.withOpacity(0.75)
                              : lightTextColor,
                        ),
                      ),
                      iAm!
                          ? Icon(
                              Icons.check_circle,
                              color:
                                  deliveryDone! ? Colors.blue : disabledColor,
                              size: 12.0,
                            )
                          : SizedBox.shrink(),
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
