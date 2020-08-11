import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_unit_mac/views/app/bloc_wrapper.dart';
import 'views/app/flutter_app.dart';

void main() {
  runApp(BlocWrapper(child: FlutterApp()));
}
