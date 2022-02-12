import 'package:flutter/material.dart';

///
/// NavigationStateYollet
///
@immutable
class NavigationStateYollet {
  final List history;

  NavigationStateYollet({required this.history});

  factory NavigationStateYollet.initial() {
    return NavigationStateYollet(history: []);
  }

  NavigationStateYollet copyWith({List? history}) {
    return NavigationStateYollet(history: history ?? this.history);
  }

  String? get current {
    var last = history.lastWhere((v) => v.isPage, orElse: () => null);
    return last != null ? last.name : '/';
  }

  bool hasRoute(String name) {
    return history.indexWhere((i) => i.name == name) != -1;
  }
}
