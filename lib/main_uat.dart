import 'package:flutter/material.dart';
import 'package:multiple_env_flutter/setup.dart';
import 'package:multiple_env_flutter/utilities/enum/env_enum.dart';

import 'my_app.dart';

void main() async {
  await setup(AppEnvironment.uat);
  runApp(const MyApp());
}
