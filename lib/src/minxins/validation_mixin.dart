
class ValidationMixin{

  String emailValidation(String value) {
    if (value.isEmpty) {
      return 'Email address cant be null';
    }
    if (!value.contains('@')) {
      return 'Please enter a valid email address';
    }
    return null;
  }


  String passwordValidation(String value) {
    if (value.isEmpty) {
      return 'Enter valid password';
    }
    if (value.length < 4) {
      return 'Password lenght must be at least 4 characters';
    }
    return null;
  }

}