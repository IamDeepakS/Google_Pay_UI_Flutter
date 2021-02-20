import 'package:flutter/material.dart';

import 'custom_painter.dart';

class BusinessBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 200),
          child: CustomPaint(
            size: Size(30, 30),
            painter: DrawTriangleShape(),
          ),
        ),
        Container(
          height: 80,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Buy ICICI FASTag & get\nflat \u{20B9} 100 cashback.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue[600],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.drive_eta_rounded,
                        color: Colors.blue[700],
                        size: 40,
                      ),
                      Icon(
                        Icons.local_gas_station,
                        color: Colors.blue[200],
                        size: 40,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
