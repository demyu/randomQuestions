import './question.dart';
import 'dart:math';
class Questions{

  List<String> score;
  int currentQuestion= 0;
  List<question> questions;

  Questions(){
    questions = new List<question>();
    score = new List();
    this.questions.add(addQuestion1());
    this.questions.add(addQuestion2());
    this.questions.add(addQuestion3());
    this.questions.add(addQuestion4());
    this.questions.add(addQuestion5());
    this.questions.add(addQuestion6());
    this.questions.add(addQuestion7());
    this.questions.add(addQuestion8());
    this.questions.add(addQuestion9());
    this.questions.add(addQuestion10());
    this.questions.add(addQuestion11());
    this.questions.add(addQuestion12());
    this.questions.add(addQuestion13());
    this.questions.add(addQuestion14());
    this.questions.add(addQuestion15());
    initializeQuestion();
  }
  
  // -1 or 1 only
  bool moveCurrentQuestion(int number){
    print(getCurrentPos());
    if(this.currentQuestion == 9 && number == 1){
      return false;
    }
    currentQuestion += number;
    return true;
  }

  int getCurrentPos(){
    return this.currentQuestion;
  }

  void answer(String value){
    this.score.add(value);
  }

  int getTotalScore(){
    int x =0;
    for (var i = 0; i < score.length; i++) {
      if(questions[i].isCorrect(score[i]))
        x++;
    }
    return x;
  }

  bool isComplete(){
    if(score.length<9)
      return false;
    else
      return true;
  }

  String getQuestion(){
    return this.questions[currentQuestion].getQuestion();
  }

  String getChoice(int cNumber){
    return this.questions[currentQuestion].getAnswers()[cNumber];
  }

  void removeLast(){
    this.score.removeLast();
  }

  void initializeQuestion(){
    var x;
    List<question> newAnswers = List();

    while(this.questions.isNotEmpty){
      x = Random.secure();
      int rand = x.nextInt(questions.length);
      newAnswers.add(questions[rand]);
      questions.removeAt(rand);
    }
    this.questions = newAnswers;
  }

  question addQuestion1(){
    var q = question("How many legs does a spider have?");
    List<String> answers = ["2", "4", "8"];
    q.addAnswers(answers);
    q.addAnswer('8');
    return q;
  }

  question addQuestion2(){
    var q = new question("What is the name of the toy cowboy in Toy Story?");
      List<String> answers = ["Buzz", "Woody", "Mr. Potato Head"];
      q.addAnswers(answers);
      q.addAnswer("Woody");
    return q;
  }

  question addQuestion3(){
    var q = new question("What’s the name of a place you go to see lots of animals?");
      List<String> answers = ["Africa", "Forest", "Zoo"];
      q.addAnswers(answers);
      q.addAnswer("Zoo");
      return q;
  }

  question addQuestion4(){
    var q = new question("Whose nose grew longer every time he lied?");
    List<String> answers = ["Shrek", "Moana", "Pinocchio"];
    q.addAnswers(answers);
    q.addAnswer("Pinocchio");
    return q;
  }

  question addQuestion5(){
    var q = new question("What is the name of the fairy in Peter Pan?");
      List<String> answers = ["Saitama", "Tinkerbell", "Naruto"];
      q.addAnswers(answers);
      q.addAnswer("Tinkerbell");
      return q;
  }

  question addQuestion6(){
    var q = new question("If you freeze water, what do you get?");
      List<String> answers = ["Ice", "Watermelon", "Lava"];
      q.addAnswers(answers);
      q.addAnswer("Ice");
      return q;
  }

  question addQuestion7(){
    var q = new question("Where does the President of the United States live while in office?");
      List<String> answers = ["Konoha", "The White House", "UA school"];
      q.addAnswers(answers);
      q.addAnswer("The White House");
      return q;
  }
  question addQuestion8(){
    var q = new question("What do bees make?");
      List<String> answers = ["Web", "Honey", "Poop"];
      q.addAnswers(answers);
      q.addAnswer("Honey");
      return q;
  }
  question addQuestion9(){
    var q = new question("How many planets are in our solar system?");
      List<String> answers = ["2", "4", "8"];
      q.addAnswers(answers);
      q.addAnswer("8");
      return q;
  }
  question addQuestion10(){
    var q = new question("What kind of cat is considered bad luck?");
      List<String> answers = ["Black cats", "Blue cats", "White cats"];
      q.addAnswers(answers);
      q.addAnswer("Black cats");
      return q;
  }
  question addQuestion11(){
    var q = new question("Where does Santa Claus live?");
      List<String> answers = ["The South Pole", "The North Pole", "Pacific Ocean"];
      q.addAnswers(answers);
      q.addAnswer("The North Pole");
      return q;
  }
  question addQuestion12(){
    var q = new question("What is the color of a school bus?");
      List<String> answers = ["Blue", "Yellow", "White"];
      q.addAnswers(answers);
      q.addAnswer("Yellow");
      return q;
  }
  question addQuestion13(){
    var q = new question("What do you use to write on a blackboard?");
      List<String> answers = ["Pencil", "Pentel Pen", "Chalk"];
      q.addAnswers(answers);
      q.addAnswer("Chalk");
      return q;
  }
  question addQuestion14(){
    var q = new question("On which holiday do you go trick-or-treating?");
      List<String> answers = ["Christmas", "Halloween", "Valentine's Day"];
      q.addAnswers(answers);
      q.addAnswer("Halloween");
      return q;
  }
  question addQuestion15(){
    var q = new question("Where is the Great Pyramid of Giza?");
      List<String> answers = ["Egypt", "Philippines", "China"];
      q.addAnswers(answers);
      q.addAnswer("Egypt");
      return q;
  }

}