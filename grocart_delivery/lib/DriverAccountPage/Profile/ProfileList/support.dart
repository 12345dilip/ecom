import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:grocart_delivery/Components/bottom_bar.dart';
import 'package:grocart_delivery/Components/entry_field.dart';
import 'package:grocart_delivery/Languages/locals.dart';
import 'package:grocart_delivery/ThemeColors/colors.dart';

class SupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
        titleSpacing: 0,
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            size: 30,
            color: mainTextColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(GrocartLocalizations.of(context)!.support!,
            style: Theme.of(context).textTheme.bodyText1),
      ),
      body: FadedSlideAnimation(child:
        SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height -
                AppBar().preferredSize.height -
                MediaQuery.of(context).padding.top,
            child: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height + 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 48.0),
                      color: Theme.of(context).cardColor,
                      child: FadedScaleAnimation(child:
                        Image(
                          image: AssetImage("images/GROCART.png"),
                          height: 130.0,
                          width: 99.7,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 24.0, horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 8.0, top: 16.0),
                            child: Text(
                              GrocartLocalizations.of(context)!.orWrite!,
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0, bottom: 16.0),
                            child: Text(
                              GrocartLocalizations.of(context)!.yourWords!,
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              children: [
                                inputTypeField(
                                  GrocartLocalizations.of(context)!.mobileNumber!,
                                  '+1 9655551781',
                                  'images/icons/ic_phone.png',
                                ),
                                inputTypeField(
                                  GrocartLocalizations.of(context)!.message!,
                                  GrocartLocalizations.of(context)!.enterMessage,
                                  'images/icons/ic_mail.png',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    BottomBar(
                      typeOftext: GrocartLocalizations.of(context)!.submit,
                      onClick: () {
                        /*............*/
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        beginOffset: Offset(0.0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }

  Container inputTypeField(String heading, String? hintText, String photo) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 20,
                child: Image(
                  image: AssetImage(
                    photo,
                  ),
                  color: mainColor,
                ),
              ),
              SizedBox(
                width: 13,
              ),
              Text(heading,
                  style: TextStyle(color: Colors.grey[600], fontSize: 12))
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 33),
            child: Column(
              children: [
                SmallSizeTextFormField(null, hintText),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
