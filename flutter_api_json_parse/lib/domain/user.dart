
class User {

  int userId;
  String name;
  String email;
  String phone;
  String type;
  String token;
  String renewalToken;

  User({this.userId, this.name, this.email, this.phone, this.type, this.token,
      this.renewalToken}); // now create converter

 factory User.fromJson(Map<String,dynamic> responseData){
   return User(
     userId: responseData['id'],
     name: responseData['Username'],
     email : responseData['Email'],
     phone: responseData['phone'],
     type : responseData['type'],
     token: responseData['token'],
     renewalToken : responseData['token'],
   );
 }
}