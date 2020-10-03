import 'package:book_mania/content.dart';
import 'package:book_mania/resusable_widgets.dart';
import 'package:flutter/material.dart';

import 'listpage.dart';

class HomePage extends StatelessWidget {
  List<Column> getData(context) {
    List<Column> content = [];
    for (String str in data.keys) {
      content.add(Column(
        children: <Widget>[
          ListTile(
            title: Text(str),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ListPage(
                  personalities: data[str],
                  title: str,
                );
              }));
            },
          ),
          Divider()
        ],
      ));
    }
    return content;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: getBackgroundImageDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: getAppBar("Book Mania"),
        body: ListView(
          children: getData(context),
        ),
      ),
    );
  }
}
