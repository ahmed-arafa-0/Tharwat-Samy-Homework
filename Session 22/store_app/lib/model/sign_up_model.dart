class SignUpModel {
  final String? firstName, lastName, email, password;

  SignUpModel({this.firstName, this.lastName, this.email, this.password});

  bool checkAllFieldsNotNull() {
    if (firstName == null ||
        lastName == null ||
        email == null ||
        password == null) {
      return false;
    } else {
      return true;
    }
  }
}
