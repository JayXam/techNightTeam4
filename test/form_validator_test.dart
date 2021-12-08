import 'package:tech_night/utils/validator.dart';
import 'package:test/test.dart';

void main() {
  test('Empty Email Test', () {
    var result = FieldValidator.validateEmail('');
    expect(result, false);
  });

  test('Invalid Email Test', () {
    var result = FieldValidator.validateEmail('shoeb');
    expect(result, false);
  });

  test('Valid Email Test', () {
    var result = FieldValidator.validateEmail('shoeb@xam.com.au');
    expect(result, true);
  });

  test('Empty First Name Test', () {
    var result = FieldValidator.validateFirstName('');
    expect(result, false);
  });

  test('Valid First Name Test', () {
    var result = FieldValidator.validateFirstName('Shoeb');
    expect(result, true);
  });

  test('Empty Last Name Test', () {
    var result = FieldValidator.validateLastName('');
    expect(result, false);
  });

  test('Valid Last Name Test', () {
    var result = FieldValidator.validateLastName('Idris');
    expect(result, true);
  });

  test('Invalid Phone Number Test', () {
    var result = FieldValidator.validatePhone('');
    expect(result, false);
  });

  test('Valid Phone Number Test', () {
    var result = FieldValidator.validatePhone('9898989890');
    expect(result, true);
  });
}


