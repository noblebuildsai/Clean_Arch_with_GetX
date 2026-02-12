
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Endpoints {
  Endpoints._();


  static Environment _environment = Environment.development;
  

  static void setEnvironment(Environment env) {
    _environment = env;
  }
  

  static Environment get environment => _environment;


  static final String _baseUrlDev = dotenv.env['BASE_URL']!;
  static const String _baseUrlStaging = "";
  static const String _baseUrlProduction = "";


  static String get baseUrl {
    switch (_environment) {
      case Environment.development:
        return _baseUrlDev;
      case Environment.staging:
        return _baseUrlStaging;
      case Environment.production:
        return _baseUrlProduction;
    }
  }


  static const String apiVersion = "v1";
  

  static String apiPath(String path) => "/$apiVersion/$path";


  static const int receiveTimeout = 30000;
  static const int connectionTimeout = 30000; 
  static const int sendTimeout = 30000; 

  // Headers
  static const String contentType = "application/json";
  static const String accept = "application/json";
  static const String tokenHeader = "token";
  static const String authorizationHeader = "Authorization";

}


enum Environment {
  development,
  staging,
  production,
}
