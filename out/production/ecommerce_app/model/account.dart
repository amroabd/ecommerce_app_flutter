
class Account{
  late int _userId;
  late String _username;
  late String _password;
  late String? _email;
  late String? _status;



  int get userId => _userId;

  set userId(int value) {
    _userId = value;
  }

  String get password => _password;

  set password(String value) {
    _password = value;
  }

  String get username => _username;

  set username(String value) {
    _username = value;
  }

  String get status => _status!;

  set status(String value) {
    _status = value;
  }

  String get email => _email!;

  set email(String value) {
    _email = value;
  }


}