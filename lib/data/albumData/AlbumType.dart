import 'package:flutter_app/data/albumData/Album.dart';

class AlbumType {
  String type;
  List<Album> albums;

  AlbumType(this.type,this.albums){}

  factory AlbumType.fromJson(Map<String, dynamic> parsedJson) {
    String type = parsedJson['type'];
    dynamic albumResponse = parsedJson['albums'];
    List<Album> albums = new List<Album>.from(albumResponse.map((m) => new Album.fromJson(m)).toList());
    return AlbumType(type,albums);
  }
}