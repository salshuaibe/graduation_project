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


}