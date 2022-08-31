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
          // İlk yaptığımız en üst tarafta bulunun profil listesi burada!
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
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              color: Colors.green.shade300,
              child: Container(
                height: 450,
                width: double.infinity,
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage("assets/model1.jpeg"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Daisy",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.bold)),
                              Text(
                                "47 mins ago",
                                style: TextStyle(
                                  fontSize: 8,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
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
        Icon(
          Icons.more_vert,
          color: Colors.grey,
          size: 16,
        )
      ],
    );
  }
}
