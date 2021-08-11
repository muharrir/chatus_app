import 'package:chatus_app/pages/home_page.dart';
import 'package:chatus_app/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          Container(
            margin: EdgeInsets.only(top: 130),
            width: 349,
            height: 286,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/splash.png',
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 130),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Instant Messaging, Simple\nAnd Personal',
                  style: whiteTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'start your new journey in the Chat Us',
                  style: greyTextStyle,
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 55,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: purpleColor,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                    child: Text(
                      'Let’s Begin',
                      style: whiteTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
