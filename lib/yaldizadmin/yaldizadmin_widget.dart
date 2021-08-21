import 'package:graduation_project/backend/api_requests/offer.dart';
import 'package:graduation_project/backend/user.dart';

import '../flutter_flow/flutter_flow_drop_down_template.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../loogintest/loogintest_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:google_fonts/google_fonts.dart';

class YaldizadminWidget extends StatefulWidget {
  final User user;
  YaldizadminWidget({Key key, @required this.user}) : super(key: key);

  @override
  _YaldizadminWidgetState createState() => _YaldizadminWidgetState();
}

class _YaldizadminWidgetState extends State<YaldizadminWidget> {
  DateTime datePicked1 = DateTime.now();
  TextEditingController textController1;
  String dropDownValue1;
  DateTime datePicked2 = DateTime.now();
  TextEditingController textController2;
  String dropDownValue2;
  TextEditingController textController3;
  String radioButtonValue1;
  String radioButtonValue2;
  String radioButtonValue3;
  String radioButtonValue4;
  String radioButtonValue5;
  TextEditingController textController4;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  List<Offer> offerItemsListUI = <Offer>[];
  Future<bool> updateListView;

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
    setState(() {
      updateListView = getData();
    });
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF34A294),
        automaticallyImplyLeading: true,
        leading: InkWell(
          onTap: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoogintestWidget(user: widget.user),
              ),
            );
          },
          child: Icon(
            Icons.logout,
            color: Color(0xFF835511),
            size: 30,
          ),
        ),
        title: Text(
          'Click Travel',
          style: FlutterFlowTheme.title2.override(
            fontFamily: 'Poppins',
            color: Color(0xFF835511),
            fontSize: 30,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Yaldiz Maneger',
                  style: FlutterFlowTheme.title3.override(
                    fontFamily: 'Poppins',
                    color: Color(0xFF835511),
                    fontSize: 25,
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: DefaultTabController(
                length: 2,
                initialIndex: 0,
                child: Column(
                  children: [
                    TabBar(
                      labelColor: Color(0xFF2D9D8F),
                      indicatorColor: Color(0xFF835511),
                      tabs: [
                        Tab(
                          text: 'Add offer',
                        ),
                        Tab(
                          text: 'Delete Offer',
                        )
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 60, 0, 60),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsets.fromLTRB(4, 0, 0, 20),
                                          child: Container(
                                            width: 300,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFE0E0E0),
                                              borderRadius:
                                              BorderRadius.circular(25),
                                            ),
                                            child: FlutterFlowDropDown(
                                              initialOption: '# of Rooms',
                                              options: [
                                                '# of Rooms',
                                                '2',
                                                '3',
                                                '4',
                                                '6',
                                                '7',
                                                '8',
                                                '9',
                                                '10',
                                                '11',
                                                '12',
                                                '13',
                                                '14',
                                                '15',
                                                '16',
                                              ],
                                              onChanged: (value) {
                                                setState(() =>
                                                dropDownValue1 = value);
                                              },
                                              width: 130,
                                              height: 40,
                                              textStyle: FlutterFlowTheme
                                                  .bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFF35A594),
                                              ),
                                              fillColor: Colors.white,
                                              elevation: 2,
                                              borderColor: Color(0xFF835511),
                                              borderWidth: 0,
                                              borderRadius: 20,
                                              margin: EdgeInsets.fromLTRB(
                                                  8, 4, 8, 4),
                                              hidesUnderline: true,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 300,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Align(
                                                alignment: Alignment(-1, 0.35),
                                                child: IconButton(
                                                  onPressed: () async {
                                                    await DatePicker
                                                        .showDatePicker(context,
                                                        showTitleActions:
                                                        true,
                                                        onConfirm: (date) {
                                                          setState(() =>
                                                          datePicked1 = date);
                                                        },
                                                        currentTime:
                                                        DateTime.now());
                                                  },
                                                  icon: Icon(
                                                    Icons.date_range,
                                                    color: Color(0xFF35A594),
                                                    size: 30,
                                                  ),
                                                  iconSize: 30,
                                                ),
                                              ),
                                              Expanded(
                                                child: TextFormField(
                                                  controller: textController1,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    hintText: 'Start date ',
                                                    hintStyle: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Poppins',
                                                    ),
                                                    enabledBorder:
                                                    UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                        Color(0x00000000),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                      const BorderRadius
                                                          .only(
                                                        topLeft:
                                                        Radius.circular(
                                                            4.0),
                                                        topRight:
                                                        Radius.circular(
                                                            4.0),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                    UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                        Color(0x00000000),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                      const BorderRadius
                                                          .only(
                                                        topLeft:
                                                        Radius.circular(
                                                            4.0),
                                                        topRight:
                                                        Radius.circular(
                                                            4.0),
                                                      ),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Poppins',
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 300,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Align(
                                                alignment: Alignment(-1, 0.35),
                                                child: IconButton(
                                                  onPressed: () async {
                                                    await DatePicker
                                                        .showDatePicker(context,
                                                        showTitleActions:
                                                        true,
                                                        onConfirm: (date) {
                                                          setState(() =>
                                                          datePicked2 = date);
                                                        },
                                                        currentTime:
                                                        DateTime.now());
                                                  },
                                                  icon: Icon(
                                                    Icons.date_range,
                                                    color: Color(0xFF35A594),
                                                    size: 30,
                                                  ),
                                                  iconSize: 30,
                                                ),
                                              ),
                                              Expanded(
                                                child: TextFormField(
                                                  controller: textController2,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    hintText: 'End date ',
                                                    hintStyle: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily: 'Poppins',
                                                    ),
                                                    enabledBorder:
                                                    UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                        Color(0x00000000),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                      const BorderRadius
                                                          .only(
                                                        topLeft:
                                                        Radius.circular(
                                                            4.0),
                                                        topRight:
                                                        Radius.circular(
                                                            4.0),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                    UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                        Color(0x00000000),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                      const BorderRadius
                                                          .only(
                                                        topLeft:
                                                        Radius.circular(
                                                            4.0),
                                                        topRight:
                                                        Radius.circular(
                                                            4.0),
                                                      ),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Poppins',
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsets.fromLTRB(3, 0, 0, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    20, 0, 0, 0),
                                                child: FlutterFlowDropDown(
                                                  options: [
                                                    'Single Room',
                                                    'Deluxe Double Room',
                                                    'Deluxe Triple Room',
                                                    'Deluxe Quadruple Room',
                                                    'Superior King Suite',
                                                    'King Suite with Balcony',
                                                    'Deluxe King Suite',
                                                    'Junior Suite',
                                                    'Deluxe Double or Twin Room',
                                                    'Deluxe Family Room'
                                                  ],
                                                  onChanged: (value) {

                                                    String temp= "";
                                                    if(value == 'Single Room') temp = '35';
                                                    else if(value == 'Deluxe Double Room') temp = '45';
                                                    else if(value == 'Deluxe Triple Room') temp = '55';
                                                    else if(value == 'Deluxe Quadruple Room') temp = '65';
                                                    else if(value == 'Superior King Suite') temp = '75';
                                                    else if(value == 'King Suite with Balcony') temp = '85';
                                                    else if(value == 'Deluxe King Suite') temp = '95';
                                                    else if(value == 'Junior Suite') temp = '105';
                                                    else if(value == 'Deluxe Double or Twin Room') temp = '115';
                                                    else if(value == 'Deluxe Family Room') temp = '125';

                                                    setState(() =>
                                                    dropDownValue2 = temp);
                                                    
                                                  },
                                                  width: 280,
                                                  height: 50,
                                                  textStyle: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xFF35A594),
                                                  ),
                                                  fillColor: Colors.white,
                                                  elevation: 8,
                                                  borderColor:
                                                  Color(0xFF835511),
                                                  borderWidth: 0,
                                                  borderRadius: 20,
                                                  margin: EdgeInsets.fromLTRB(
                                                      8, 4, 8, 4),
                                                  hidesUnderline: true,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsets.fromLTRB(4, 20, 0, 20),
                                          child: Container(
                                            width: 300,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFE0E0E0),
                                              borderRadius:
                                              BorderRadius.circular(25),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  20, 0, 0, 0),
                                              child: TextFormField(
                                                controller: textController3,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  hintText:
                                                  'Enter the offer price',
                                                  hintStyle:
                                                  GoogleFonts.getFont(
                                                    'Open Sans',
                                                    color: Color(0xFF835511),
                                                    fontWeight:
                                                    FontWeight.normal,
                                                  ),
                                                  enabledBorder:
                                                  UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                    const BorderRadius.only(
                                                      topLeft:
                                                      Radius.circular(4.0),
                                                      topRight:
                                                      Radius.circular(4.0),
                                                    ),
                                                  ),
                                                  focusedBorder:
                                                  UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                    const BorderRadius.only(
                                                      topLeft:
                                                      Radius.circular(4.0),
                                                      topRight:
                                                      Radius.circular(4.0),
                                                    ),
                                                  ),
                                                ),
                                                style: GoogleFonts.getFont(
                                                  'Open Sans',
                                                  color: Color(0xFF835511),
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsets.fromLTRB(0, 20, 0, 0),
                                          child: Container(
                                            width: 290,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFEEEEEE),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsets.fromLTRB(0, 0, 0, 10),
                                          child: FFButtonWidget(
                                            onPressed: () {
                                              Offer offer = Offer(
                                                hotel_id: '65',
                                                num_of_rooms: this.dropDownValue1,
                                                start_date: this.datePicked1.toString(),
                                                end_date: this.datePicked2.toString(),
                                                room_id: this.dropDownValue2,
                                                price: this.textController3.text
                                              );
                                              
                                              offer.addOffer().then((added) => {
                                                if (added){
                                                    showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      return AlertDialog(
                                                        // Retrieve the text the user has entered by using the
                                                        // TextEditingController.
                                                        content: Text("Offer added :)"),
                                                        actions: <Widget>[
                                                          // usually buttons at the bottom of the dialog
                                                          new TextButton(
                                                            child: new Text("Close"),
                                                            onPressed: () {
                                                              Navigator.of(context).pop();
                                                            },
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  ),
                                                }
                                                else {
                                                    showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      return AlertDialog(
                                                        // Retrieve the text the user has entered by using the
                                                        // TextEditingController.
                                                        content: Text("Something wrong happened !!"),
                                                        actions: <Widget>[
                                                          // usually buttons at the bottom of the dialog
                                                          new TextButton(
                                                            child: new Text("Close"),
                                                            onPressed: () {
                                                              Navigator.of(context).pop();
                                                            },
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  ),
                                                }
                                              });
                                            },
                                            text: 'Add Offer',
                                            options: FFButtonOptions(
                                              width: 150,
                                              height: 50,
                                              color: Color(0xFF35A594),
                                              textStyle: GoogleFonts.getFont(
                                                'Open Sans',
                                                color: Color(0xFFDEDEDE),
                                                fontSize: 16,
                                              ),
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 0,
                                              ),
                                              borderRadius: 25,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                            ),
                            child: Expanded(
                              child: getOfferViews(),
                            )
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getOfferViews(){
    return FutureBuilder<bool>(
      future: updateListView,
      builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
        if (!snapshot.hasData) {
          return const SizedBox();
        } else {
          return Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: this.offerItemsListUI.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap:() {
                    Offer offer = Offer();
                    offer.deleteOffer(this.offerItemsListUI[index].id).then((deleted) => {
                      if (deleted){
                          showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              // Retrieve the text the user has entered by using the
                              // TextEditingController.
                              content: Text("Offer deleted :)"),
                              actions: <Widget>[
                                // usually buttons at the bottom of the dialog
                                new TextButton(
                                  child: new Text("Close"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        ),
                      }
                      else {
                          showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              // Retrieve the text the user has entered by using the
                              // TextEditingController.
                              content: Text("Something wrong happened !!"),
                              actions: <Widget>[
                                // usually buttons at the bottom of the dialog
                                new TextButton(
                                  child: new Text("Close"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        ),
                      }

                    });
                    getData();
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.tertiaryColor,
                          border: Border.all(
                            color: Color(0xFFC8CED5),
                            width: 1,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        '${offerItemsListUI[index].hotel_id == '65' ?
                                        'Yaldiz palace hotels' :
                                        (offerItemsListUI[index].hotel_id == '55' ?
                                        'AlYasmeen hotels' :
                                        'Saleem Afandi Hotel')}',
                                        style:
                                        FlutterFlowTheme.subtitle1.override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF15212B),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                          EdgeInsets.fromLTRB(0, 4, 4, 0),
                                          child: Text(
                                            '${offerItemsListUI[index].room_id == '35' ?
                                            'Single Room' :
                                            (offerItemsListUI[index].room_id == '45' ?
                                            'Delux double Room' :
                                            (offerItemsListUI[index].room_id == '55' ?
                                            'Deluxe Triple Room' :
                                            (offerItemsListUI[index].room_id == '65' ?
                                            'Deluxe Quadruple Room':
                                            (offerItemsListUI[index].room_id == '75' ?
                                            'Superior King Suite':
                                            (offerItemsListUI[index].room_id == '85' ?
                                            'King Suite with Balcony':
                                            (offerItemsListUI[index].room_id == '95' ?
                                            'Deluxe King Suite':
                                            (offerItemsListUI[index].room_id == '105' ?
                                            'Junior Suite':
                                            (offerItemsListUI[index].room_id == '115' ?
                                            'Deluxe Double or Twin Room': 'some room'))))))))}  Price: ${offerItemsListUI[index].price}',
                                            style: FlutterFlowTheme.bodyText2
                                                .override(
                                              fontFamily: 'Poppins',
                                              color:
                                              FlutterFlowTheme.primaryColor,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 8, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,

                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          );
        }
      },
    );
  }

  Future<bool> getData() async {
    Offer offer = Offer();
    await offer.getAllOffers();
    this.offerItemsListUI = offer.offersList;
    return true;
  }
}
