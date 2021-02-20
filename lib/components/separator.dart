import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

class Separator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dash(
      dashColor: Colors.grey[300],
      dashLength: 3,
      direction: Axis.horizontal,
      length: MediaQuery.of(context).size.width - 60,
      dashThickness: 2,
      dashGap: 5,
    );
  }
}
