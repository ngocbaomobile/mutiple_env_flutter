import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:multiple_env_flutter/setup.dart';

import 'my_app.dart';
import 'utilities/enum/env_enum.dart';

void main() async {
  await setup(AppEnvironment.dev);
  runApp(const MyApp());
}
