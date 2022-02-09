class Diary {
  final String title;
  final String description;

  Diary({required this.title, required this.description});

  Map<String, dynamic> toMap() {
    return {
      "title": title,
      "description": description,
    };
  }
}
