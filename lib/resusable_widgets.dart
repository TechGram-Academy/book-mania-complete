import 'package:flutter/material.dart';

getAppBar(String title){
  return AppBar(title: Text(title), backgroundColor: Colors.grey,);
}



getBackgroundImageDecoration(){
  return BoxDecoration(
    image: DecorationImage(
      image: new AssetImage("images/background.jpg"),
      fit: BoxFit.cover,
    ),
  );
}