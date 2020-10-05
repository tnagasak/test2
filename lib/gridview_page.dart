import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: GridView.count(
          crossAxisCount: 3,
          children: List.generate(50, (index) {
            return Container(
              margin: EdgeInsets.all(8.0),
              child: Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
              ),
            );
          }),
        ));
  }
}
