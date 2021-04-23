class Question
{
  //PRIVATE VARS
  String _question;
  bool _answer;

  //CONSTRUCTOR
  Question(this._question,this._answer);

  //GETTERS FOR PRIVATE VARS
  get answer =>_answer;
  get question =>_question;
}