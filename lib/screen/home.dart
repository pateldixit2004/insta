import 'package:flutter/material.dart';
import 'package:insta/screen/insta_home.dart';
import 'package:insta/screen/insta_profile.dart';

class Homw extends StatefulWidget {
  const Homw({Key? key}) : super(key: key);

  @override
  State<Homw> createState() => _HomwState();
}

class _HomwState extends State<Homw> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          height: 70,
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // GestureDetector(
              //   onTap: () {
              //     setState(() {
              //       i=0;
              //     });
              //   },
              // ),
              // GestureDetector(
              //   onTap: () {
              //     setState(() {
              //       i=1;
              //     });
              //   },
              // )
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(child: IndexedStack(
              index: i,
              children: [
                Insta_Home(),
                Insta_Profile(),
              ],
            ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {
                  setState(() {
                    i=0;
                  });
                }, child: Text("hy")),
                ElevatedButton(onPressed: () {
                  setState(() {
                    i=1;
                  });
                }, child: Text(""))

              ],
            ),
          ],
        ),
      ),
    );
  }
}
