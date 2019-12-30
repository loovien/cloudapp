class DailyPoetry {
  String id;
  String content;
  int popularity;
  List<dynamic> matchTags;
  DailyPoetryOrigin origin;

  DailyPoetry(
      {this.id, this.content, this.popularity, this.matchTags, this.origin});

  factory DailyPoetry.fromJson(Map<String, dynamic> json) {
    return DailyPoetry(
      id: json['id'] ?? 1,
      content: json['content'] ?? "",
      popularity: json['popularity'] ?? 0,
      matchTags: json['matchTags'] ?? null,
      origin: DailyPoetryOrigin.fromJson(json['origin']),
    );
  }
}

class DailyPoetryOrigin {
  String title;
  String dynasty;
  String author;
  List<dynamic> content;
  String translate;

  DailyPoetryOrigin(
      {this.title, this.dynasty, this.author, this.content, this.translate});

  factory DailyPoetryOrigin.fromJson(Map<String, dynamic> json) {
    return DailyPoetryOrigin(
        title: json["title"] ?? '',
        dynasty: json['dynasty'] ?? '',
        author: json['author'] ?? '',
        content: json['content'] ?? null,
        translate: json['translatre'] ?? '');
  }
}
