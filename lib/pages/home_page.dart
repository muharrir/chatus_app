import 'package:chatus_app/theme.dart';
import 'package:chatus_app/widgets/message_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        padding: EdgeInsets.only(
          top: 60,
          left: 30,
          right: 30,
        ),
        children: [
          Row(
            children: [
              Image.asset(
                'assets/profile.png',
              ),
              Spacer(),
              Image.asset(
                'assets/icon_menu.png',
                width: 18,
                height: 14,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Online',
                      style: whiteTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: semiBold,
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      'assets/icon_online.png',
                      width: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/online1.png',
                        height: 58,
                        width: 50,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        'assets/online2.png',
                        width: 50,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        'assets/online3.png',
                        width: 50,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        'assets/online4.png',
                        width: 50,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        'assets/online5.png',
                        width: 50,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 22),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Messages',
                      style: whiteTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: semiBold,
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      'assets/icon_search.png',
                      width: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                MessageList(
                  imageUrl: 'assets/message1.png',
                  name: 'Keazia De Rezia',
                  message: 'Sent a Photo',
                  date: 'Now',
                ),
                MessageList(
                  imageUrl: 'assets/message2.png',
                  name: 'Peter Park',
                  message: 'Oke, sure',
                  date: '11:2 PM',
                ),
                MessageList(
                  imageUrl: 'assets/message3.png',
                  name: 'Loila Bae',
                  message: 'Don\'t forget group as...',
                  date: '10:6 PM',
                ),
                MessageList(
                  imageUrl: 'assets/message4.png',
                  name: 'Ben Markz',
                  message: 'Check you Email!',
                  date: '9:11 PM',
                ),
                MessageList(
                  imageUrl: 'assets/message5.png',
                  name: 'Alice March',
                  message: 'No. Sorry',
                  date: 'Yesterday',
                ),
                MessageList(
                  imageUrl: 'assets/message6.png',
                  name: 'Josh George',
                  message: 'Sent Sticker',
                  date: 'Yesterday',
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff2F3142),
        selectedLabelStyle: purpleTextStyle.copyWith(
          fontSize: 12,
          fontWeight: semiBold,
        ),
        selectedItemColor: Color(0xff6A6AE3),
        unselectedLabelStyle: grey2TextStyle.copyWith(
          fontSize: 12,
          fontWeight: semiBold,
        ),
        unselectedItemColor: Color(0xff92949B),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 5),
              child: Image.asset(
                'assets/icon_chat.png',
                width: 24,
                height: 20,
              ),
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 5),
              child: Image.asset(
                'assets/icon_call.png',
                width: 23,
                height: 20,
              ),
            ),
            label: 'Calls',
          ),
        ],
      ),
    );
  }
}
