
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';



class AddTwoNumbers extends StatefulWidget {
  const AddTwoNumbers({Key? key}) : super(key: key);

  @override
  _AddTwoNumbersState createState() => _AddTwoNumbersState();
}

class _AddTwoNumbersState extends State<AddTwoNumbers> {
  TextEditingController num1controller = TextEditingController();
  TextEditingController num2controller = TextEditingController();
  String result = "0";









//memoization object

  final memo ={} ;

//Sum Function

  sumFunc(){
    int x=int.parse(num1controller.text);
    int y=int.parse(num2controller.text);

    //k : v
    if (kDebugMode) {
      print (memo);
    }

    memo['$x+$y']!=null?


    setState(() {
      result =  memo['$x+$y'];

    })

        : Future.delayed(const Duration(milliseconds: 4000), () {




      setState(() {


        int sum = x + y;
        result = sum.toString();
        memo['$x+$y']= result ;



      });





    });



  }















  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            const Text("Number 1:"),
            Flexible(
              child: TextField(
                keyboardType: TextInputType.number,
                controller: num1controller,
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            const Text("Number 2:"),
            Flexible(
              child: TextField(
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
              child: const Text("Add"),
              onPressed : () {
                sumFunc();
              },
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("Result:",
              style: TextStyle(
                fontSize: 30,
              ),),
            Text(result,
              style: const TextStyle(
                fontSize: 30,
              ),),
          ],
        ),
      ],
    );
  }
}