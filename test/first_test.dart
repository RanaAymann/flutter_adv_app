import 'package:flutter_adv_app/core/helpers/app_regex.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Validators tests', () {
    test('Given a wrong email format, then expect an error message.', () {
// Given
      var wrongEmail = 'rana@gmail.com';
// When
      var wrongEmailResult = AppRegex.isEmailValid(wrongEmail);
// Then
      expect(wrongEmailResult, false);
    });
  });
}

// so if email is valid, and expect is false, test scenario will fail