import 'package:ecommerce_app/utils/date_util.dart';

class User {
  int? id;
  String? firstname;
  String? maidenName;
  String? lastname;
  String? image;
  late int? age;
  late String? createDate;

  User.name(
      {this.id,
      this.firstname,
      this.maidenName,
      this.lastname,
      this.image,
      this.age,
      this.createDate});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstname = json['firstName'];
    lastname = json['lastName'];
    maidenName = json['maidenName'];
    image = json['image'];
    age = json['age'];
    createDate = DateUtil.getCurrentDateTime(); //json['createDate'];
    //return User.name(id: id,firstname: firstname,maidenName: maidenName,lastname: lastname,image: image,age: age);
  }

 Map toJson() => {
        'id': id,
        'firstName': firstname,
        'lastName': lastname,
        'maidenName': maidenName,
        'image': image,
        'age': age,
      };
}
