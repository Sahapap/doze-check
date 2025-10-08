import 'package:flutter_dotenv/flutter_dotenv.dart';

class Config {
  static Future<void> init() async {
    // You can use --dart-define=ENV=dev, ENV=prod, etc.
    const env = String.fromEnvironment('ENV', defaultValue: 'dev');
    await dotenv.load(fileName: '.env.$env');
  }

  static String get appName => dotenv.env['APP_NAME'] ?? '';
  static String get apiBaseUrl => dotenv.env['API_BASE_URL'] ?? '';
  static bool get featureFlag => dotenv.env['FEATURE_FLAG'] == 'true';
}
