/// ENTERPRISE: Core - Environment config.
enum AppEnv { dev, staging, prod }

class EnvConfig {
  static AppEnv _env = AppEnv.dev;
  static AppEnv get env => _env;
  static void setEnv(AppEnv e) => _env = e;

  static String get apiBaseUrl {
    switch (_env) {
      case AppEnv.dev:
        return 'https://dev.api.com';
      case AppEnv.staging:
        return 'https://staging.api.com';
      case AppEnv.prod:
        return 'https://api.com';
    }
  }
}
