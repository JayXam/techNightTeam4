import 'package:tech_night/utils/validator.dart';
import 'package:test/test.dart';

void main() {
  test('Empty Email Test', () {
    var result = FieldValidator.validateEmail('');
    expect(result, 'Enter Email!');
  });

  test('Invalid Email Test', () {
    var result = FieldValidator.validateEmail('shoeb');
    expect(result, 'Enter Valid Email!');
  });

  test('Valid Email Test', () {
    var result = FieldValidator.validateEmail('shoeb@xam.com.au');
    expect(result, null);
  });

  test('Empty First Name Test', () {
    var result = FieldValidator.validateFirstName('');
    expect(result, 'Enter First Name!');
  });

  test('Valid First Name Test', () {
    var result = FieldValidator.validateFirstName('Shoeb');
    expect(result, null);
  });

  test('Empty Last Name Test', () {
    var result = FieldValidator.validateLastName('');
    expect(result, 'Enter Last Name!');
  });

  test('Valid Last Name Test', () {
    var result = FieldValidator.validateLastName('Idris');
    expect(result, null);
  });

  test('Invalid Phone Number Test', () {
    var result = FieldValidator.validatePhone('');
    expect(result, 'Enter Phone Number!');
  });

  test('Valid Phone Number Test', () {
    var result = FieldValidator.validatePhone('9898989890');
    expect(result, null);
  });
}


