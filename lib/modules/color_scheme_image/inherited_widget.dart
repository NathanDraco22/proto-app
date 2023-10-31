import 'dart:typed_data';

import 'package:flutter/material.dart';

class ViewModel extends InheritedWidget {
  ViewModel({super.key, required  Widget child}) : super(child: child);
  
  final ValueNotifier<Uint8List?> memoryImage = ValueNotifier(null);

  static ViewModel of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ViewModel>()!;
  }

  @override
  bool updateShouldNotify(ViewModel oldWidget) {
    return false;
  }
}