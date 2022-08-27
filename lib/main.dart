
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Add Two Numbers';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: AddTwoNumbers(),
      ),
    );
  }
}























class AddTwoNumbers extends StatefulWidget {
  @override
  _AddTwoNumbersState createState() => _AddTwoNumbersState();
}

class _AddTwoNumbersState extends State<AddTwoNumbers> {
  TextEditingController num1controller = new TextEditingController();
  TextEditingController num2controller = new TextEditingController();
  String result = "0";




  //memo

  final memo ={} ;








//Sum Fuction 

  sumFunc(){
    int x=int.parse(num1controller.text);
    int y=int.parse(num2controller.text);

    //k : v



    print (memo);
    memo['$x+$y']!=null?
    setState(() {



      result =  memo['$x+$y'];



    })


        :Future.delayed(Duration(milliseconds: 4000), () {




      setState(() {


        int sum = x + y;
        result = sum.toString();
        memo['$x+$y']= result ;



      });





    });



  }
























  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("Number 1:"),
              new Flexible(
                child: new TextField(
                  keyboardType: TextInputType.number,
                  controller: num1controller,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text("Number 2:"),
              new Flexible(
                child: new TextField(
                  keyboardType: TextInputType.number,
                  controller: num2controller,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("Add"),
                onPressed : () {
                  sumFunc();
                },
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Result:",
                style: TextStyle(
                  fontSize: 30,
                ),),
              Text(result,
                style: TextStyle(
                  fontSize: 30,
                ),),
            ],
          ),
        ],
      ),
    );
  }
}