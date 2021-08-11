import 'package:flutter/material.dart';

import '../theme.dart';

class MessageList extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String message;
  final String date;

  MessageList({this.imageUrl, this.name, this.message, this.date});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 16,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                imageUrl,
                width: 50,
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: whiteTextStyle.copyWith(
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    message,
                    style: grey2TextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Text(
                date,
                style: grey2TextStyle.copyWith(
                  fontSize: 10,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Divider(
            color: Color(0xff313441),
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
