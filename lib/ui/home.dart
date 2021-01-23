import 'package:flutter/material.dart';

class BizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amberAccent.shade700,
        title: Text("BizCard Application"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            _getCard(),

            _getAvatar(),
          ],
        ),
      ),
    );
  }

  //GetCard Method
  Container _getCard() {
    return Container(
      width: 350,
      height: 175,
      margin: EdgeInsets.all(50),
      decoration: BoxDecoration(
        color: Colors.amberAccent.shade700,
        borderRadius: BorderRadius.circular(14.5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 15,),
          Text(
            "Muhammad Numan Latif",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
            ),
          Text(
            "blueartservices.com",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person_outline_sharp),
              Text(
                "@blueartservices",
                style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  //GetAvatar Method
  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        border: Border.all(
          color: Colors.amberAccent,
          width: 2.0,
        ),
        image: DecorationImage(
          image: NetworkImage("https://picsum.photos/300/300"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
