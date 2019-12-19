class DailyPoetry {
  String id;
  String content;
  int popularity;
  List<String> matchTags;
  DailyPoetryOrigin origin;

  DailyPoetry(
      {this.id, this.content, this.popularity, this.matchTags, this.origin});

  factory DailyPoetry.fromJson(Map<String, dynamic> json) {
    return DailyPoetry(
      id: json['id'],
      content: json['content'],
      popularity: json['popularity'],
      matchTags: json['matchTags'],
      origin: DailyPoetryOrigin.fromJson(json['origin']),
    );
  }
}

class DailyPoetryOrigin {
  String title;
  String dynasty;
  String author;
  List<String> content;
  String translate;

  DailyPoetryOrigin(
      {this.title, this.dynasty, this.author, this.content, this.translate});

  factory DailyPoetryOrigin.fromJson(Map<String, dynamic> json) {
    return DailyPoetryOrigin(
        title: json["title"],
        dynasty: json['dynasty'],
        author: json['author'],
        content: json['content'],
        translate: json['translatre']);
  }
}
