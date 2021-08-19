import 'dart:convert';
import 'package:http/http.dart';

class Hotel {
  String id;
  int price;
  String hotal_name;
  String city;
  String num_of_rooms;


  Hotel({

    this.id: "",
    this.hotal_name: "",
    this.city: "",
    this.num_of_rooms: "",
    this.price: 0,

  });


  Future <List<Hotel>> priceAndCity() async {
    List<Hotel>_hotels= <Hotel>[];

    Response response = await post(
        Uri.parse("https://samehandraghad.herokuapp.com/hotel/priceAndCity"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          'price': price,
          'city': city,
        }));

    var jsonResponse = jsonDecode(response.body);
    print(jsonResponse);
    if (jsonResponse['error'] != null) {
      return _hotels;
    }
    else if (jsonResponse['message'] != null) {
      _hotels.clear();
      var length = jsonResponse['length'];
      var queue = jsonResponse['message'];
      for (int i=0 ; i< length ; i++){
        _hotels.add(
            Hotel(
              id: queue[i]['id'].toString(),
              hotal_name: '${queue[i]['hotal_name']}',
              city: queue[i]['city'],
              num_of_rooms: queue[i]['num_of_rooms'].toString()
            )
        );
      }
      return _hotels;
    }

    return _hotels;
  }

  Future <bool> getallhotel() async {
    print("before search");
    Response response = await post(
        Uri.parse("https://samehandraghad.herokuapp.com/hotel/getAll"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({


        }));
    print("after search");
    var jsonResponse = jsonDecode(response.body);
    print(jsonResponse);
    if (jsonResponse['error'] != null) {

      return false;
    }
    else if (jsonResponse['message'] != null) {
      //Iterable list = result[0]['table_menu_list'][0]['category_dishes'];
      //return list.map((model) => CategoryDishes.fromJson(model)).toList();
      this.id = (jsonResponse['message']['id']);
      this.hotal_name = jsonResponse['message']['hotel_name'];
      this.city = jsonResponse['message']['city'];
      this.num_of_rooms = jsonResponse['message']['num_of_rooms'];


      return true;
    }
    return false;
  }

}
 /* Future <bool> signupToBackend() async {
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


}*/