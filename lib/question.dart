import 'dart:math';

class question{

  String quest;
  List<String> answers;
  String answer;

  question(String t){
    this.answers = List();
    this.quest = t;
  }

  void initializeQuestion(){
    var x;
    List<String> newAnswers = List();

    while(this.answers.isNotEmpty){
      x = Random.secure();
      int rand = x.nextInt(answers.length);
      newAnswers.add(answers[rand]);
      answers.removeAt(rand);
    }
    this.answers = newAnswers;
  }

  void addAnswers(List<String> t){
    this.answers = t;
    initializeQuestion();
  }

  List<String> getAnswers(){
    return this.answers;
  }

  void addAnswer(String t){
    this.answer = t;
  }

  String getAnswer(){
    return this.answer;
  }

  String getQuestion(){
    return this.quest;
  }

  bool isCorrect(String x){
    if(x == this.answer){
      return true;
    }
    return false;
  }



}