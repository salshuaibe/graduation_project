import 'dart:convert';
import 'package:http/http.dart';

class Favourite  {
  String id;
  String HotelId;
  String ResturantId;
  String UserId;
  String FavouriteId;
  String Type;



  Favourite({
    this.id: "",
    this.HotelId:"",
    this.ResturantId: "",
    this.UserId: "",
    this.FavouriteId:"",
    this.Type:"",

  });




  Future <bool> addfav() async {

    Response response = await post(Uri.parse("https://samehandraghad.herokuapp.com/favorite"),
        // Response response = await post("http://10.0.2.2:5000/"https://dont-wait.herokuapp.com/signup"signup",
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({'Favourite Id': this.FavouriteId ,'UserId': UserId, 'type': Type,}));
    print("after post");

    var jsonResponse = jsonDecode(response.body);
    print(jsonResponse);
    if(jsonResponse['error'] != null){
      print(jsonResponse);
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