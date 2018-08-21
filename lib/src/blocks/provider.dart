import 'package:flutter/material.dart';
import 'block.dart';

class Provider extends InheritedWidget {
  final block = Block();
  @override
  bool updateShouldNotify(_) => true;
  static Block of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(Provider) as Provider).block;
  }
}
