class Todo {
  String title;
  DateTime date;

  Todo({
    required this.title,
    required this.date,
  });

  Todo.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        date = DateTime.parse(json['dateTime']);

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'dateTime': date.toIso8601String(),
    };
  }
}
