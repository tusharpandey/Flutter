import 'package:flutter/material.dart';
import 'package:flutter_app/screens/section/apiRequest/ApiRequestSample.dart';
import 'package:flutter_app/screens/section/calculator/operationtypes.dart';
import 'package:flutter_app/screens/section/googleSingin/googleSignin.dart';
import 'package:flutter_app/screens/section/listview/CountryNames.dart';
import 'package:flutter_app/screens/section/notification/Notification.dart';
import 'package:flutter_app/utils/Strings.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
      appBar: new AppBar(
        title: Text(Strings.WELCOME_MSG),
      ),
      body: LandingList(),
    ));
  }
}

class LandingList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LandingListState();
  }
}

class LandingListState extends State<LandingList> {
  final _suggestions = <String>[];

  @override
  void initState() {
    super.initState();
    _suggestions.add(Strings.CALCULATOR);
    _suggestions.add(Strings.NOTIFICATION);
    _suggestions.add(Strings.GOOGLE_LOGIN);
    _suggestions.add(Strings.API_REQUEST);
    _suggestions.add(Strings.COUNTRY_LIST);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return new ListView.separated(
      itemCount: _suggestions.length,
      itemBuilder: (context, i) {
        return _buildRow(_suggestions[i]);
      },
      separatorBuilder: (context, index) => Divider(
            color: Colors.black,
          ),
    );
  }

  Widget _buildRow(String pair) {
    return new ListTile(
      contentPadding: const EdgeInsets.all(10.0),
      title: new Text(pair),
      onTap: () => onTapped(pair),
    );
  }

  void onTapped(String value) {
    switch (value) {
      case Strings.CALCULATOR:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Calculator()),
        );
        break;
      case Strings.NOTIFICATION:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PushMessagingExample()),
        );
        break;
      case Strings.GOOGLE_LOGIN:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SignInDemo()),
        );
        break;
      case Strings.API_REQUEST:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ApiRequestSample()),
        );
        break;
      case Strings.COUNTRY_LIST:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CountryNames()),
        );
        break;
    }
  }
}
