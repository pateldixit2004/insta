import 'package:flutter/material.dart';

class Insta_Home extends StatefulWidget {
  const Insta_Home({Key? key}) : super(key: key);

  @override
  State<Insta_Home> createState() => _Insta_HomeState();
}

class _Insta_HomeState extends State<Insta_Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "instagram",
          style: TextStyle(fontSize: 20),
        ),
        actions: [
          Icon(Icons.add_box_outlined,color: Colors.white,)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Stand('assets/image/jay.png'),
                Stand('assets/image/jay.png'),
                Stand('assets/image/jay.png'),
              ],
            ),
            Container(
              child: Column(
                children: [
                  post("assets/image/jay.png"),
                  post("assets/image/jay.png"),
                  post("assets/image/jay.png"),
                  post("assets/image/jay.png"),
                  post("assets/image/jay.png"),
                  post("assets/image/jay.png"),
                  post("assets/image/jay.png"),
                  post("assets/image/jay.png"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget Stand(String Dixit)
  {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(shape: BoxShape.circle,gradient: LinearGradient(colors: [Colors.red,Colors.blueAccent]),),
      child: Container(width: 25,height: 25,decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.white)),child: CircleAvatar(radius: 40,backgroundImage: AssetImage("$Dixit"),),),
    );
  }
  Widget post(String ph)
  {
    return Column(
      children: [
        Image.asset("$ph",height: 200,fit: BoxFit.contain,),
        Row(
          children: [
            Row(
              children: [
                Icon(Icons.favorite_border_rounded, size: 30),
                Icon(Icons.comment_bank_outlined,size: 30),
                Icon(Icons.add_comment_outlined, size: 30),
              ],
            )
          ],
        ),
      ],
    );
  }
}
