import 'package:flutter/material.dart';

class Insta_Profile extends StatefulWidget {
  const Insta_Profile({Key? key}) : super(key: key);

  @override
  State<Insta_Profile> createState() => _Insta_ProfileState();
}

class _Insta_ProfileState extends State<Insta_Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "profile page",
          style: TextStyle(fontSize: 20),
        ),
        backgroundColor: Colors.black,
        actions: [
          Icon(Icons.add_box_outlined, color: Colors.white),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              Icons.menu_rounded,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.black12,
                      backgroundImage: NetworkImage(
                          "https://cdn.icon-icons.com/icons2/2714/PNG/512/instagram_logo_thin_icon_171701.png"),
                    ),
                    Text(
                      "Dixit Patel",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                foll(10, "Post"),
                SizedBox(width: 20),
                foll(200, "Followers"),
                SizedBox(width: 20),
                foll(0, "Following"),
              ],
            ),
            SizedBox(height: 7),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  con("Edit profile"),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: con("Share profile"),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  highlight('assets/image/jay.png','Patel'),
                  highlight('assets/image/jay.png','Patel'),
                  highlight('assets/image/jay.png','Patel'),
                  highlight('assets/image/jay.png','Patel'),
                  highlight('assets/image/jay.png','Patel'),
                ],
              ),
            ),
            Row(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(height: 30,
                                width: 150,
                                alignment: Alignment.center,
                                child: Icon(Icons.grid_on_sharp)),
                            Container(height: 30,
                                width: 150,
                                alignment: Alignment.center,
                                child: Icon(Icons.assignment_ind_outlined)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            photo("assets/image/jay.png"),
                            photo("assets/image/jay.png"),
                            photo("assets/image/jay.png"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            photo("assets/image/jay.png"),
                            photo("assets/image/jay.png"),
                            photo("assets/image/jay.png"),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget foll(int no, String name) {
    return Column(
      children: [
        Text(
          "$no",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text("$name")
      ],
    );
  }

  Widget con(String name) {
    return Container(
      height: 20,
      width: 100,
      color: Colors.black12,
      child: Center(child: Text("$name")),
    );
  }

  Widget highlight(String im ,String da) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient:
                LinearGradient(colors: [Colors.purpleAccent, Colors.redAccent]),
          ),
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white10),
            ),
            child: CircleAvatar(
              radius: 17,
              backgroundImage: AssetImage("$im"),
            ),
          ),
        ),
        Text("$da"),

      ],
    );
  }
  Widget photo(String photo)
  {
    return Container(
      height: 100,
      width: 100,
      child: Image.asset("$photo"),
    );
  }
}
