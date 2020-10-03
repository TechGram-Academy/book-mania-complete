import 'package:book_mania/resusable_widgets.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {

  final String content;
  final String title;
  DetailPage({this.content, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: getBackgroundImageDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: getAppBar(title),
        body: Container(
          child: SingleChildScrollView(
            child: Text(
              content,
              textAlign: TextAlign.center,
              style: TextStyle(

                fontSize: 25
              ),
            ),
          ),
        ),
      ),
    );
  }
}
