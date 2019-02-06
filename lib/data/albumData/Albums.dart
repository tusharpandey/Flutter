
import 'package:flutter_app/data/albumData/AlbumType.dart';

class Albums {
  List<AlbumType> albumstype;

  void map(dynamic jsonResponse) {
    albumstype = new List<AlbumType>.from(jsonResponse.map((m) => new AlbumType.fromJson(m)).toList());
  }

  AlbumType getAlbumType(int index){
    return albumstype[index];
  }
}
