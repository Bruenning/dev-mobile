
import 'package:work_with_sql/DataBaseHelper.dart';

class People{

  int _id = 0;
  String _name = '';
  int _age = 0;
  String _email = '';
  String _phone = '';

  People.inicializetedFast(this._id, this._name, this._age, this._email, this._phone);
  People();

  int get id => _id;
  set id(int value) {
    _id = value;
  }

  String get name => _name;
  set name(String value) {
    if(value.length > 3){
      _name = value;
    }
  }

  int get age => _age;
  set age(int value) {
    if(value > 0 && value < 120){
      _age = value;
    }
  }

  String get email => _email;
  set email(String value) {
    if(value.contains("@")){
      _email = value;
    }
  }

  String get phone => _phone;
  set phone(String value) {
    if(value.length > 8){
      _phone = value;
    }
  }
  Map<String, Object?> toMap() {
    return {
      'id': _id,
      'name': name,
      'age': age,
      'email': email,
      'phone': phone,
    };
  }

  save(int? id) async{
    DataBaseHelper helper = DataBaseHelper.instance;

    if(id != 0){
      await helper.update(toMap());

    }else{
      await helper.insert(toMap());
    }
  }

  @override
  String toString() {
    return 'People{_name: $_name, _age: $_age, _email: $_email, _phone: $_phone}';
  }

  

}