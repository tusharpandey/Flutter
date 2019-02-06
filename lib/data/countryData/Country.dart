class Album {
  final String title;

  Album({this.title});

  factory Album.fromJson(Map<String, dynamic> parsedJson) {
    print(parsedJson.length);
    return Album(title: parsedJson['title']);
  }
}
