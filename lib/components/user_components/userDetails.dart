import 'package:flutter/material.dart';
import 'package:google_pay_ui/model/userModel.dart';

class UserDetails extends StatelessWidget {
  final ScrollController controller;

  const UserDetails({Key key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: double.infinity,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemCount: dummyData.length,
        controller: controller,
        itemBuilder: (context, i) {
          return GridTile(
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(dummyData[i].imgUrl),
                  radius: 30,
                ),
                SizedBox(height: 2),
                Text(
                  dummyData[i].name,
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
    );
  }
}
