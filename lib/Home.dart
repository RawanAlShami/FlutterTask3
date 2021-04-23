import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter3/QuestionScreen.dart';
import 'package:flutter3/FinalScreen.dart';

Color bg = Color.fromRGBO(37, 39, 77, 100);
Color border = Color.fromRGBO(46, 156, 202, 100);
Color blue = Color.fromRGBO(36, 48, 94, 100);

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bg,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Welcome To Random Trivia',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                  letterSpacing: 3.0,
                ),
              ),
              Text(
                'Are You Ready To Get Quizzed ? ',
                style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w200,
                ),
              ),
              MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>QuestionsScreen(0)));
              },
                child: Container(
                  width: 200.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: blue,
                    borderRadius: BorderRadius.circular(40.0),
                    shape: BoxShape.rectangle,
                    border: Border.all(color:border,width: 2.0,style: BorderStyle.solid),
                  ),
                  child:Center(
                    child: Text(
                      'Ready! ',
                      style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w200,
                        fontSize: 14.0,
                      ),
                    ),
                  )
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
