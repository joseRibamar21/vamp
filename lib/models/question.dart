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
    var t = -1;
    var r = -1;

    if (json.containsKey(json["timer"])) {
      t = json["timer"];
    }
    if (json.containsKey(json["route"])) {
      r = json["route"];
    }

    return Question(
        id: json["id"],
        imagePath: json['imagePath'],
        question: json['question'],
        timer: t,
        route: r,
        answers:
            json["answers"].map<Answer>((e) => Answer.fromJson(e)).toList());
  }
}
