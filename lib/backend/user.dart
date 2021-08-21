import 'dart:convert';
import 'package:http/http.dart';

class User  {
  String  id;
  String birthDate;
  String email;
  String password;
  String confirmPassword;
  String gender;
  String userType;

  User({
    this.id: "",
    this.birthDate:"",
    this.email: "",
    this.password: "",
    this.confirmPassword: "",
    this.gender:'',
    this.userType:'',
  });


  Future <bool> loginToBackend() async {
    print("before post");
    Response response = await post(Uri.parse("https://samehandraghad.herokuapp.com/login"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({'email': email, 'password': password}));
    print("after post");
    var jsonResponse = jsonDecode(response.body);
    if(jsonResponse['error'] != null){
      // print(jsonResponse['error']);
      return false;
    }
    else if (jsonResponse['message'] != null){
      this.id = jsonResponse['message']['id'].toString();
      this.birthDate = jsonResponse['message']['birth_date'];
      this.gender = jsonResponse['message']['gender'];
      this.email = jsonResponse['message']['email'];
      this.password = jsonResponse['message']['password'];
      this.userType = jsonResponse['message']['user_type'];
      print("password:" + this.password);
      return true;
    }
    return false;
  }

  Future <bool> signupToBackend() async {
    if( password != confirmPassword) return false ;
    Response response = await post(Uri.parse("https://samehandraghad.herokuapp.com/signup"),
        // Response response = await post("http://10.0.2.2:5000/"https://dont-wait.herokuapp.com/signup"signup",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({'birth_date': this.birthDate ,'gender': gender, 'email': email, 'password': password, 'user_type':this.userType}));
    print("after post");

    var jsonResponse = jsonDecode(response.body);
    print(jsonResponse);
    if(jsonResponse['error'] != null){
      // print(jsonResponse['error']);
      return false;
    }
    else if (jsonResponse['message'] != null){
      // print (jsonResponse['message']);
      return true;
    }
    return false;
  }

  Future <bool> changePassword(String newPassword) async {
    Response response = await post(Uri.parse("https://samehandraghad.herokuapp.com/password/change"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({'user_id': id, 'password': newPassword}));

    var jsonResponse = jsonDecode(response.body);
    if(jsonResponse['error'] != null){
      // print(jsonResponse['error']);
      return false;
    }
    else if (jsonResponse['message'] != null){
      return true;
    }
    return false;
  }

  Future <bool> deleteUser(String email) async {
    Response response = await post(Uri.parse("https://samehandraghad.herokuapp.com/user/delete"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({'email': email}));

    var jsonResponse = jsonDecode(response.body);
    if(jsonResponse['error'] != null){
      // print(jsonResponse['error']);
      return false;
    }
    else if (jsonResponse['message'] != null){
      return true;
    }
    return false;
  }

  Future <List<User>> getAllUsers() async {
    List<User>usersList= <User>[];
    Response response = await get(
        Uri.parse("https://samehandraghad.herokuapp.com/users"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },);

    var jsonResponse = jsonDecode(response.body);
    print(jsonResponse);

    if (jsonResponse['error'] != null) {
      return usersList;
    }

    else if (jsonResponse['message'] != null) {
      usersList.clear();
      var length = jsonResponse['length'];
      var queue = jsonResponse['message'];
      for (int i=0 ; i< length ; i++){
        usersList.add(
            User(
                id: queue[i]['id'].toString(),
                email:  '${queue[i]['email']}',
                password:  '${queue[i]['password']}',
                birthDate:  '${queue[i]['birth_date']}',
                gender: queue[i]['gender'],
                userType: queue[i]['user_type']
            )
        );
      }
      return usersList;
    }

    return usersList;
  }


}