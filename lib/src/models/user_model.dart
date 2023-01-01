import 'dart:collection';

class UserModel {
   String? firstName, lastName, email, uid;
   String? phoneNumber;

  UserModel({this.phoneNumber,this.email, this.uid, this.lastName, this.firstName});

  factory UserModel.fromMap(map){
    return UserModel(
      firstName: map["firstName"],
      lastName: map["lastName"],
      email: map["email"],
      uid: map["uid"],
      phoneNumber: map["phoneNumber"],

    );
  }

  Map<String, dynamic> toMap(){
    return {
      'uid': uid,
      'firstName': firstName,
      'lastName': lastName,
      'phoneNumber': phoneNumber,
      'email': email,

    };
 }
}
