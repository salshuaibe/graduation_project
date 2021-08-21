import 'dart:convert';
import 'package:http/http.dart';

class Favourite  {
  String id;
  String UserId;
  String FavouriteId;
  String Type;

  Favourite({
    this.id: "",
    this.UserId: "",
    this.FavouriteId:"",
    this.Type:"",
  });

  Future <bool> addfav() async {

    Response response = await post(Uri.parse("https://samehandraghad.herokuapp.com/favorite"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({'fav_id': this.FavouriteId ,'user_id': UserId, 'type': Type,}));

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