import 'package:test/test.dart';

void main() {
  // https://dart.dev/codelabs/async-await

  test('Using Future', () async {
    Future<String> fetchUsername() {
      // Retournez un Future qui se résout à 'JohnDoe' après un délai d'une seconde.
    }

    var username = ...; // Attendez le Future fetchUsername et affectez le résultat à username.
    
    expect(username, equals('JohnDoe'));
  });

  test('Using Future with error', () async {
    Future<String> fetchUsername() {
      // Retournez un Future qui lève une exception 'Failed to fetch username' après un délai d'une seconde.
    }

    try {
      var username = ...; // Attendez le Future fetchUsername et affectez le résultat à username.
    } catch(e) {
      expect(e, isA<Exception>());
    }
  });
}
