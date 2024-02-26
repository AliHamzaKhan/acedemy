

class AppEnvironment {
  static const _env = String.fromEnvironment('ENV', defaultValue: 'prod');

  static String env() {
    return _env;
  }
  static String apiUrl() {
    switch (_env) {
      case 'prod':
        return 'https://app.khatadari.com/api/';
      case 'staging':
        return 'https://app.khatadari.com/api/';
      case 'debug':
        return 'https://app.khatadari.com/api/';
      default:
        return '';
    }
  }

  static String chatApiUrl() {
    switch (_env) {
      case 'prod':
        return "https://chatbot.qsaweb.com/api/";
      case 'staging':
        return "https://chatbot2.qsaweb.com/api/";
      case 'debug':
        return 'https://chatbot2.qsaweb.com/api/';
      default:
        return '';
    }
  }
}

enum ApiEnvironmentEnum {
  Prod('prod'),
  Staging('staging'),
  Debug('debug');

  const ApiEnvironmentEnum(this.value);

  final String value;
}
