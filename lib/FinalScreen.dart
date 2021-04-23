import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter3/Home.dart';
import 'QuestionScreen.dart';

class FinalScreen extends StatelessWidget
 {
  @override
  String ResultStatus;

  Widget build(BuildContext context) {
    if (Scored>=10)
      ResultStatus = 'You Are An Expert At This!';
    else if (Scored>7 && Scored<12)
      ResultStatus = 'Impressive. Thats Better Than Average!';
    else
      ResultStatus='Hard Luck';
    return SafeArea(
      child: Scaffold(
          backgroundColor: bg,
          body:Center(
            child: Column(
              children: [
                Container(
                  padding:EdgeInsets.only(top:40.0),
                  child: Text(
                    'All Done !',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0,
                      letterSpacing: 3.0,
                    ),
                  ),
                ),
                Container(
                  padding:EdgeInsets.only(top:40.0),
                  child: Text(
                    'You Scored $Scored Questions Correct Out Of 12. \n $ResultStatus \n \n \n Get A Friend To Test Their Knowledge Too \n',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w200,
                      fontSize: 14.0,
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                    Scored=0;
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
                          'Start Again! ',
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
