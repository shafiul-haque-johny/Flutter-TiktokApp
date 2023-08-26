// Create Firebase app, add to web, then copy those api (key, domain, projectId, bucket, msgSenderId, appId.

class Configurations {
  static const _apiKey = "AIzaSyCWGcq7K9btfdDA0Pr__B6uM3lI1YBuh2k";
  static const _authDomain = "tiktok-app-4f063.firebaseapp.com";
  static const _projectId = "tiktok-app-4f063";
  static const _storageBucket = "tiktok-app-4f063.appspot.com";
  static const _messagingSenderId = "503867475928";
  static const _appId = "1:503867475928:web:f9e1009534a2764c1c94ad";

//Make some getter functions
  String get apiKey => _apiKey;
  String get authDomain => _authDomain;
  String get projectId => _projectId;
  String get storageBucket => _storageBucket;
  String get messagingSenderId => _messagingSenderId;
  String get appId => _appId;
}
