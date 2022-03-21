import './models.dart';

class Question {
  int? id;
  String? imagePath;
  String? question;
  List<Answer>? answers;

  Question(
      {required this.id,
      required this.imagePath,
      required this.question,
      required this.answers});

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
        id: json["id"],
        imagePath: json['imagePath'],
        question: json['question'],
        answers:
            json["answers"].map<Answer>((e) => Answer.fromJson(e)).toList());
  }
}
