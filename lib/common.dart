import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final String title;

  MyAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      centerTitle: false,
      title: Text('${this.title}'),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Color(0xFF832685),
            Color(0xFFC81379),
          ]),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String title;
  final Widget page;
  MyButton(this.title, this.page);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => this.page),
        );
      },
      child: Container(
        height: 60,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Color(0xFF952d96),
                Color(0xFFE81379),
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 1.0,
                blurRadius: 10.0,
                offset: Offset(8, 8),
              ),
            ]),
        child: Center(
            child: Text(
          this.title,
          style: TextStyle(
              color: Color(0xFFFAF2FB),
              fontSize: 22,
              fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
