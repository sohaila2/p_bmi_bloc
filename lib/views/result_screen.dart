import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  late String result;
  late String msg;
  late String des;
  ResultScreen(this.result,this.msg,this.des);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2F2E3A),
      appBar: AppBar(
        title: Text("BMI RESULT"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 1,
              child: Text(
                "your result",
                style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              )),
          Expanded(
              flex: 5,
              child: Container(
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Color(0xFF24232F)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  <Widget>[
                    Text(
                      widget.result,
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 26.0,
                      ),
                    ),
                    Text(
                      widget.msg,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                      ),
                    ),
                    Text(
                      widget.des,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                      ),
                    )
                  ],
                ),
              )),
          Expanded(
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10.0),
                  color: Color(0xFF1DE9B6),
                  margin: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    "recalculate",
                    style: TextStyle(color: Colors.white,
                        fontSize: 25.0
                    ),
                  ),
                ),
              ))

        ],
      ),
    );
  }
}
