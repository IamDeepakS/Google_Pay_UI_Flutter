import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            child: Icon(
              Icons.center_focus_weak,
              color: Colors.white,
            ),
          ),
          CircleAvatar(
            child: Icon(Icons.people),
          ),
        ],
      ),
    );
  }
}
