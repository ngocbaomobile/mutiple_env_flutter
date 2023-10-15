import 'package:flutter/material.dart';
import 'package:multiple_env_flutter/setup.dart';

import 'my_app.dart';
import 'utilities/enum/env_enum.dart';

void main() async{
  await setup(AppEnvironment.prod);
  runApp(const MyApp());
}
