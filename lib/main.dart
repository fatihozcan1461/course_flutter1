import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(Benimuygulama());
}

class Benimuygulama extends StatelessWidget {
  const Benimuygulama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(" ZAR AT"),
          ),
          backgroundColor: Colors.yellowAccent,
        ),
        body: DicePad(),
        backgroundColor: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
class DicePad extends StatefulWidget {
  const DicePad({Key? key}) : super(key: key);

  @override
  State<DicePad> createState() => _DicePadState();
}

class _DicePadState extends State<DicePad> {
  int solResimNo = 1;
  int sagResimNo = 1;
  void zarAt()
  {
   setState(()
   {
     solResimNo = Random().nextInt(6)+1;
     sagResimNo = Random().nextInt(6)+1;
   });
  }
  @override
  Widget build(BuildContext context) {
    print("asdfdgk");
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: ()
                {
                  zarAt();
                },
                child:  Image.asset("Images/dice$solResimNo.jpg",),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(

                  onPressed: ()
                  {
                    zarAt();
                  },
                  child: Image.asset("Images/dice$sagResimNo.jpg"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



