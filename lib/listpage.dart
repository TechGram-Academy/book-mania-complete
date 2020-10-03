import 'package:book_mania/detailpage.dart';
import 'package:book_mania/resusable_widgets.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  final Map personalities;
  final String title;

 ListPage({@required this.personalities, @required this.title});


  List<Column> getData(context) {
    List<Column> content = [];
    for (String str in personalities.keys) {
      content.add(Column(
        children: <Widget>[
          ListTile(
            title: Text(str),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return DetailPage(content: personalities[str], title: str,);
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
        appBar: getAppBar(title),
        body: ListView(
          children:getData(context),
        ),
      ),
    );
  }
}
