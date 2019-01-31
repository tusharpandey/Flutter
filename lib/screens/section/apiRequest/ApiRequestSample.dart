import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app/data/Post.dart';
import 'package:flutter_app/screens/architecture/ParentWidget.dart';
import 'package:flutter_app/utils/Strings.dart';
import 'package:http/http.dart' as http;

class ApiRequestSample extends ParentWidget {
  @override
  Widget build(BuildContext context) {
    super.attachTitle(Strings.API_REQUEST);
    return super.build(context);
  }

  @override
  State<StatefulWidget> getWidget() {
    return GenericStateFullState();
  }
}

class GenericStateFullState extends State<GenericStateFullWidget> {
  @override
  Widget build(BuildContext context) {
    String title = Strings.API_REQUEST;
    AppBar actionBar = title.isEmpty ? null : new AppBar(title: Text(title));
    return new Scaffold(
        appBar: actionBar,
        body: Container(
          color: Colors.red,
          child: Center(
              child: FutureBuilder<Post>(
                  future: fetchPost(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Text(snapshot.data.title);
                    } else if (snapshot.hasError) {
                      return Text("${snapshot.error}");
                    }
                    return CircularProgressIndicator();
                  })),
        ));
  }

  Future<Post> fetchPost() async {
    final response =
        await http.get('https://jsonplaceholder.typicode.com/posts/1');

    if (response.statusCode == 200) {
      return Post.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }
}
