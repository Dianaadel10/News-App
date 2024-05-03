class Article {
  final String title;
  final String? descricption;
  final String? urlimage;

  Article(
      {required this.title,
      required this.descricption,
      required this.urlimage});
  factory Article.fromJson(Map<String, dynamic> jsonData) {
    return Article(
      urlimage: jsonData['urlToImage'],
      title: jsonData['title'],
      descricption: jsonData['description'],
    );
  }
}
