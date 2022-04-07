import './models.dart';

class Question {
  int? id;
  String? imagePath;
  String? question;
  int timer;
  int route;
  List<Answer>? answers;

  Question(
      {required this.id,
      required this.imagePath,
      required this.question,
      required this.timer,
      required this.route,
      required this.answers});

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
        id: json["id"],
        imagePath: json['imagePath'],
        question: json['question'],
        timer: json["timer"],
        route: json["route"],
        answers:
            json["answers"].map<Answer>((e) => Answer.fromJson(e)).toList());
  }
}
