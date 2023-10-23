// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';


Widget generateWebViewWeb(){

      // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
    'test-view-type',
    (int viewId) => IFrameElement()
      ..width = '640'
      ..height = '360'
      ..src = 'https://www.vectary.com/viewer/v1/?model=d6c1f27d-6a27-4c7e-bd7d-bd19d7faa56c&turntable=-2'
      ..style.border = 'none');
    return const HtmlElementView(viewType: 'test-view-type');
  
}


