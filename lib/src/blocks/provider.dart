import 'package:flutter/material.dart';
import 'block.dart';

class Provider extends InheritedWidget {
  final block = Bloc();

  Provider({Key key, Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(_) => true;

  static Bloc of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(Provider) as Provider).block;
  }
}
