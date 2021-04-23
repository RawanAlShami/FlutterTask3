import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter3/FinalScreen.dart';
import 'package:flutter3/Home.dart';
import 'AnswerKey.dart';
int Scored=0;
class QuestionsScreen extends StatefulWidget {
  final int index;
  QuestionsScreen(this.index);

  @override
  _QuestionsScreenState createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  Quiz thequiz = Quiz();

  Color yes = Color.fromRGBO(127,255,0,100);
  Color no = Color.fromRGBO(255,0,0,100);

  bool correct = false;
  bool incorrect = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              thequiz.quiz[widget.index].question,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w200,
                fontSize: 19.0,
              ),
            ),
            Visibility(
              child: Icon(CupertinoIcons.check_mark_circled,color: yes,size:20.0),
              visible: correct,
              replacement: Visibility(
                child: Icon(CupertinoIcons.clear_circled,color: no,size:20.0),
                visible: incorrect,
              ),
            ),
            Row(
              children: [
                MaterialButton(
                  onPressed: (){
                    if(thequiz.quiz[widget.index].answer==true) {
                      setState(() {
                        correct = true;
                        incorrect=false;
                        Scored+=1;
                      });
                    }
                    else
                      setState(() {
                        correct = false;
                        incorrect=true;
                      });
                    },
                    child: Container(
                      width: 148.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color:blue,
                        border: Border.all(color:yes,width:2.0,style:BorderStyle.solid),
                        borderRadius:BorderRadius.circular(40.0),
                      ),
                      child:Center(
                        child:Text(
                          'True',
                          style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w200,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                 MaterialButton(
                    onPressed: () {
                      if(thequiz.quiz[widget.index].answer==false){
                        setState(() {
                          correct=true;
                          incorrect=false;
                          Scored+=1;
                        });
                      }
                      else
                        setState(() {
                          correct=false;
                          incorrect=true;
                        });
                      },
                    child: Container(
                      width: 148.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color:blue,
                        border: Border.all(color:no,width:2.0,style:BorderStyle.solid),
                        borderRadius:BorderRadius.circular(40.0),
                      ),
                      child:Center(
                        child:Text(
                          'False',
                          style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w200,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            Container(
              alignment: Alignment.bottomRight,
              child:MaterialButton(
                onPressed:(){
                  if(widget.index==11)
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FinalScreen()));
                  }
                  else{
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=>QuestionsScreen(widget.index+1),
                      ),
                    );
                  }
                },
                child: Icon(CupertinoIcons.arrow_right_square,color: Colors.white,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}