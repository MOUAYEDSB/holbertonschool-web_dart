class Password {
  String? _password;

  Password({String? password}) : _password = password;

  // Getter for password
  String? get password => _password;

  // Setter for password
  set password(String? password) {
    _password = password;
  }

  // Method to validate the password
  bool isValid() {
    // If password is null, consider it as empty string for validation
    String pwd = _password ?? '';
    
    // Check for length constraints
    if (pwd.length < 8 || pwd.length > 16) {
      return false;
    }

    // Regular expressions to check for required character types
    bool hasUppercase = pwd.contains(RegExp(r'[A-Z]'));
    bool hasLowercase = pwd.contains(RegExp(r'[a-z]'));
    bool hasDigit = pwd.contains(RegExp(r'\d'));
    bool hasSpecialChar = pwd.contains(RegExp(r'[!@#\$&*~]')); // Optional: Check for special characters
    bool hasWhitespace = pwd.contains(RegExp(r'\s')); // Optional: Ensure no whitespaces
    
    // Return true if all conditions are met
    return hasUppercase && hasLowercase && hasDigit && !hasWhitespace;
  }

  // Override toString to return the password
  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}
