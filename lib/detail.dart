import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  var imgPath;

  Detail({this.imgPath});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
     children: [Hero(
          tag: widget.imgPath,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.imgPath), fit: BoxFit.cover)),
          ),
        ),
        Positioned(
          left: 15,
          right: 15,
          bottom: 15,
          child: Material(
            borderRadius: BorderRadius.circular(10),
            elevation: 4,
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width - 30,//sağdan soldan 15 verdiğimiz için toplamı 30
            
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Container(
                        height: 130,
                        width: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey),
                        image: DecorationImage(image: AssetImage("assets/dress.jpg"),fit:BoxFit.contain),
                        ),
                        
                      ),
                    )
                  ],
                )
              ],
            ),
            ),
            
          ),
        ),
        ],
      ),
    );
  }
}
