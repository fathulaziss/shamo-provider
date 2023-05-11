class AppRegex {
  static bool hasMatch(String? value, String pattern) {
    if (value == null) {
      return false;
    } else {
      return RegExp(pattern).hasMatch(value);
    }
  }

  static bool isEmail(String s) => hasMatch(
        s,
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
      );

  static bool isValidPassword({required String password, int minLength = 6}) {
    if (password.isEmpty) {
      return false;
    }

    // final capitalFirst = password.substring(0, 1).contains(RegExp('[A-Z]'));
    final hasUppercase = password.contains(RegExp('[A-Z]'));
    final hasDigits = password.contains(RegExp('[0-9]'));
    final hasLowercase = password.contains(RegExp('[a-z]'));
    // final hasSpecialCharacters =
    //     password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
    final hasMinLength = password.length >= minLength;

    return
        // capitalFirst &&
        hasDigits && hasUppercase && hasLowercase && hasMinLength;
    // &&
    // hasSpecialCharacters;
  }
}
