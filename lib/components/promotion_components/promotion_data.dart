import 'package:flutter/material.dart';

class PromotionData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 17),
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 1.5,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.orange,
                        child: Icon(
                          Icons.emoji_events,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        "Rewards",
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.red[700],
                        child: Icon(
                          Icons.local_offer,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        "Offers",
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: Icon(
                          Icons.emoji_events_outlined,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        "Refferals",
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
