import 'dart:convert';
import 'package:http/http.dart';

class Offer {
  String id;
  String price;
  String room_id;
  String hotel_id;
  String start_date;
  String end_date;
  String num_of_rooms;
  List<Offer>offersList= <Offer>[];

  Offer({

    this.id: "",
    this.room_id: "",
    this.hotel_id: "",
    this.start_date: "",
    this.end_date: "",
    this.num_of_rooms : "",
    this.price: "",

  });



  Future <List<Offer>> getAllOffers() async {
    Response response = await post(
        Uri.parse("https://samehandraghad.herokuapp.com/offer/getAll"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({        }));

    var jsonResponse = jsonDecode(response.body);
    print(jsonResponse);
    if (jsonResponse['error'] != null) {
      return offersList;
    }
    else if (jsonResponse['message'] != null) {
      offersList.clear();
      var length = jsonResponse['length'];
      var queue = jsonResponse['message'];
      for (int i=0 ; i< length ; i++){
        offersList.add(
            Offer(
                id: queue[i]['id'].toString(),
                hotel_id:  '${queue[i]['hotel_id']}',
                room_id:  '${queue[i]['room_id']}',
                price:  '${queue[i]['price']}',
                end_date: queue[i]['end_date'],
                start_date: queue[i]['start_date']
            )
        );
      }
      return offersList;
    }

    return offersList;
  }

  Future <List<Offer>> getAllReservations() async {


    Response response = await post(
        Uri.parse("https://samehandraghad.herokuapp.com/reservation/getAll"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({        }));

    var jsonResponse = jsonDecode(response.body);
    print(jsonResponse);
    if (jsonResponse['error'] != null) {
      return offersList;
    }
    else if (jsonResponse['message'] != null) {
      offersList.clear();
      var length = jsonResponse['length'];
      var queue = jsonResponse['message'];
      for (int i=0 ; i< length ; i++){
        offersList.add(
            Offer(
                id: queue[i]['id'].toString(),
                room_id:  '${queue[i]['room_id']}',
                num_of_rooms:  '${queue[i]['num_of_rooms']}',
                end_date: queue[i]['check_in'],
                start_date: queue[i]['check_out']
            )
        );
      }
      return offersList;
    }

    return offersList;
  }

  Future <bool> addOffer() async {

    Response response = await post(Uri.parse("https://samehandraghad.herokuapp.com/offer/add"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({'room_id': this.room_id ,'hotel_id': this.hotel_id, 'price': this.price, 'start_date': this.start_date, 'end_date': this.end_date, }));

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

  Future <bool> deleteOffer(String id) async {

    Response response = await post(Uri.parse("https://samehandraghad.herokuapp.com/offer/delete"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({'offer_id': id}));

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