import 'package:get/get_utils/src/get_utils/get_utils.dart';

class FieldValidator {
  String? validateEmail(String? email) {
    if (email!.isEmpty) {
      return 'Invalid Email';
    }

    if (!RegExp(r"\S+@\S+\.\S+").hasMatch(email)) {
      return 'Invalid Email';
    }

    if (!GetUtils.isEmail(email)) {
      return 'Invalid Email';
    }

    return null;
  }

  String? validatePassword(String? password) {
    if (password!.isEmpty) {
      return 'Invalid Password';
    }

    if (password.length < 8) {
      return 'Invalid Password';
    }

    return null;
  }

}
