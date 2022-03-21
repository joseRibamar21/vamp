class Answer {
  String? title;
  int? route;

  Answer({required this.title, required this.route});

  factory Answer.fromJson(Map<String, dynamic> json) {
    return Answer(title: json['title'], route: json['route']);
  }
}
