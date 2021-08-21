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

  Future <List<Hotel>> getAllHotel() async {
    List<Hotel>_hotels= <Hotel>[];

    Response response = await post(
        Uri.parse("https://samehandraghad.herokuapp.com/hotel/getAll"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({        }));

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

  Future <bool> deleteHotel(String id) async {
    Response response = await post(Uri.parse("https://samehandraghad.herokuapp.com/hotel/delete"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({'hotel_id': id}));

    var jsonResponse = jsonDecode(response.body);
    print(jsonResponse);
    if(jsonResponse['error'] != null){
      // print(jsonResponse['error']);
      return false;
    }
    else if (jsonResponse['message'] != null){
      return true;
    }
    return false;
  }

}