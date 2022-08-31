import 'package:flutter/material.dart';

void main() {
  runApp(const FashionApp());
}

class FashionApp extends StatelessWidget {
  const FashionApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Fashion App",
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt),
            color: Colors.green,
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 5),
        children: [
          Container(
            //color: Colors.purple.shade400,
            height: 150,
            width: double.infinity,
            child: ListView(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: [
                listElement("assets/model1.jpeg", "assets/chanellogo.jpg"),
                SizedBox(
                  width: 30,
                ),
                listElement("assets/model2.jpeg", "assets/louisvuitton.jpg"),
                SizedBox(
                  width: 30,
                ),
                listElement("assets/model3.jpeg", "assets/chloelogo.png"),
                SizedBox(
                  width: 30,
                ),
                listElement("assets/model1.jpeg", "assets/chanellogo.jpg"),
                SizedBox(
                  width: 30,
                ),
                listElement("assets/model2.jpeg", "assets/louisvuitton.jpg"),
                SizedBox(
                  width: 30,
                ),
                listElement("assets/model3.jpeg", "assets/chloelogo.png"),
              ],
            ),
          )
        ],
      ),
    );
  }

  listElement(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.cover)),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage(logoPath), fit: BoxFit.cover),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 11,
        ),
        Container(
          height: 25,
          width: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.brown),
          child: Center(
            child: Text(
              "Follow",
              style: TextStyle(
                  fontFamily: "Montserrat", fontSize: 12, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
