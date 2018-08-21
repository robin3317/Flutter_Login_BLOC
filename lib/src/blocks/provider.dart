import 'package:flutter/material.dart';
import 'block.dart';

class Provider extends InheritedWidget {
  final block = Block();

  Provider({Key key, Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(_) => true;

  static Block of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(Provider) as Provider).block;
  }
}
