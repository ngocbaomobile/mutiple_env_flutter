import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:multiple_env_flutter/utilities/enum/env_enum.dart';

class Appconfig {
  Appconfig._();
  static final instance = Appconfig._();
  AppEnvironment env = AppEnvironment.dev;
  Map<String, dynamic> _config = {};

  final EnvConfig _envConfig = EnvConfig(
      dev: {"base_url": "app.dev.base_url"},
      prod: {"base_url": "app.prod.base_url"},
      uat: {"base_url": "app.uat.base_url"});

  Future setUp(AppEnvironment appEnv) async {
    env = appEnv;
    _config = _envConfig.getConfig(env);
  }

  String get baseUrl => _config['base_url'];
}

class EnvConfig {
  final Map<String, dynamic> dev;
  final Map<String, dynamic> uat;
  final Map<String, dynamic> prod;

  EnvConfig({required this.dev, required this.uat, required this.prod});

  Map<String, dynamic> getConfig(AppEnvironment env) {
    switch (env) {
      case AppEnvironment.dev:
        return dev;
      case AppEnvironment.uat:
        return uat;
      case AppEnvironment.prod:
        return prod;
    }
  }
}
