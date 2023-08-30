// Create Firebase app, add to web, then copy those api (key, domain, projectId, bucket, msgSenderId, appId.

class Configurations {
  static const _apiKey = "Your Values";
  static const _authDomain = "Your Values";
  static const _projectId = "Your Values";
  static const _storageBucket = "Your Values";
  static const _messagingSenderId = "Your Values";
  static const _appId = "Your Values";

//Make some getter functions
  String get apiKey => _apiKey;
  String get authDomain => _authDomain;
  String get projectId => _projectId;
  String get storageBucket => _storageBucket;
  String get messagingSenderId => _messagingSenderId;
  String get appId => _appId;
}
