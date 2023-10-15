import 'config/app_config.dart';
import 'utilities/enum/env_enum.dart';

Future setup(AppEnvironment env) async {
  await Appconfig.instance.setUp(env);
}
