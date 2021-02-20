import 'package:dashed_circle/dashed_circle.dart';
import 'package:flutter/material.dart';
import 'package:google_pay_ui/model/userModel.dart';

class LoadMore extends StatefulWidget {
  @override
  _LoadMoreState createState() => _LoadMoreState();
}

class _LoadMoreState extends State<LoadMore> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 17),
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 1.38,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  3,
                  (index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Column(
                        children: [
                          DashedCircle(
                            gapSize: 4,
                            dashes: 20,
                            color: Colors.grey,
                            child: Padding(
                              padding: EdgeInsets.all(3),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                  dummyData[index].imgUrl,
                                ),
                                radius: 27,
                              ),
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            dummyData[index].name,
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          size: 50,
                          color: Colors.black,
                        ),
                        backgroundColor: Colors.grey[300],
                      ),
                      Text(
                        "Show More",
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
