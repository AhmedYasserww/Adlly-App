
// it work with data from firebase
import 'package:adlly_app/features/auth/domain/entites/user_entity.dart';

class UserModel extends UserEntity{
  UserModel({
    required super.email,
    required super.name,
    required super.uId,
  });
  // factory UserModel.fromFirebaseUser(User user){
  //   return UserModel(
  //     email: user.email ?? '',
  //     name: user.displayName??'',
  //     uId: user.uid,
  //   );
  // }
  factory UserModel.fromJson(Map<String,dynamic>json){
    return UserModel(
      email: json['email'],
      name: json['name'],
      uId: json['uId'],
    );
  }
  factory UserModel.fromEntity(UserEntity userEntity){
    return UserModel(
      email: userEntity.email,
      name: userEntity.name,
      uId: userEntity.uId,
    );
  }
  toMap() {
    return {
      "email": email
      , "name": name,
      "uId": uId
    };
  }

}