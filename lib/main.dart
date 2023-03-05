import 'package:flutter/material.dart';
import 'package:insta/screen/home.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=> Homw(),
      },
    ),
  );
}