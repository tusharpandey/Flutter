import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class ParentWidget extends StatelessWidget {
  String title = "";

  Widget attachTitle(String title) {
    this.title = title == null ? "" : title;
  }

  Widget build(BuildContext context) {
    return new GenericStateFullWidget(this);
  }

  State<StatefulWidget> getWidget();
}

class GenericStateFullWidget extends StatefulWidget {
  final ParentWidget parentWidget;

  const GenericStateFullWidget(@required this.parentWidget);

  @override
  State<StatefulWidget> createState() {
    return parentWidget.getWidget();
  }
}
