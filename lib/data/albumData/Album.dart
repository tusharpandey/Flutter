class Album {
  final String title;

  Album({this.title});

  factory Album.fromJson(Map<String, dynamic> parsedJson) {
    return Album(title: parsedJson['title']);
  }
}
