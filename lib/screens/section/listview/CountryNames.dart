import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app/data/albumData/Album.dart';
import 'package:flutter_app/data/albumData/Albums.dart';
import 'package:flutter_app/screens/architecture/ParentWidget.dart';
import 'package:flutter_app/utils/Strings.dart';
import 'package:http/http.dart' as http;

class CountryNames extends ParentWidget {
  @override
  Widget build(BuildContext context) {
    super.attachTitle(Strings.COUNTRY_LIST);
    return super.build(context);
  }

  @override
  State<StatefulWidget> getWidget() {
    return new CountryNamesState();
  }
}

class CountryNamesState extends State<GenericStateFullWidget> {
  BuildContext context;

  @override
  void initState() {
    super.initState();
    createAlbum();
  }

  createAlbum() async {
    Albums album = await loadAlbum();
    print(album.albumstype[0].albums[0].title);
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return getScaffold();
  }

  Scaffold getScaffold() {
    String title = Strings.COUNTRY_LIST;
    AppBar actionBar = title.isEmpty ? null : new AppBar(title: Text(title));
    Scaffold scaffold = new Scaffold(
      appBar: actionBar,
      body: getContainer(),
    );
    return scaffold;
  }

  Container getContainer() {
    Container container = new Container(
      color: Colors.yellowAccent,
//      child: getResult(),
    );
    return container;
  }

  FutureBuilder<Albums> getResult() {
    Future future = loadAlbum();
    FutureBuilder<Albums> futureBuilder = new FutureBuilder(
        builder: (context, snapshot) {
          if(snapshot.hasData){
            print("data");
            return Text("helo data is here");
          }
          print("no-data");
          return CircularProgressIndicator();
        },
        future: future);
    return futureBuilder;
  }

  Future<String> _loadAStudentAsset() async {
    return await rootBundle.loadString('assets/data.json');
  }

  Future<Albums> loadAlbum() async {
    String jsonString = await _loadAStudentAsset();
    final jsonResponse = json.decode(jsonString);
    Albums albums = new Albums();
    albums.map(jsonResponse);
    return albums;
  }
}
