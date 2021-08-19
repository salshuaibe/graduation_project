import '../flutter_flow/flutter_flow_drop_down_template.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../saleemafandi/saleemafandi_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckavailabilitysaleemWidget extends StatefulWidget {
  CheckavailabilitysaleemWidget({Key key}) : super(key: key);

  @override
  _CheckavailabilitysaleemWidgetState createState() =>
      _CheckavailabilitysaleemWidgetState();
}

class _CheckavailabilitysaleemWidgetState
    extends State<CheckavailabilitysaleemWidget> {
  DateTime datePicked1 = DateTime.now();
  TextEditingController textController1;
  String dropDownValue1;
  String dropDownValue2;
  String dropDownValue3;
  DateTime datePicked2 = DateTime.now();
  TextEditingController textController2;
  String dropDownValue4;
  TextEditingController textController3;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF35A594),
        automaticallyImplyLeading: true,
        leading: InkWell(
          onTap: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SaleemafandiWidget(),
              ),
            );
          },
          child: Icon(
            Icons.arrow_back,
            color: Color(0xFFB67512),
            size: 35,
          ),
        ),
        title: Text(
          'Click travel',
          style: FlutterFlowTheme.subtitle1.override(
            fontFamily: 'Poppins',
            color: Color(0xFF9C6513),
            fontSize: 25,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: Icon(
              Icons.home,
              color: Color(0xFFB67512),
              size: 35,
            ),
          )
        ],
        centerTitle: true,
        elevation: 4,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment(0, -1),
              child: Image.asset(
                'assets/images/copy_131401405.png',
                width: double.infinity,
                height: 250,
                fit: BoxFit.contain,
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment(0, 0),
                    child: Container(
                      width: 0,
                      height: 0,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 60, 0, 60),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(4, 0, 0, 20),
                                child: Container(
                                  width: 300,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE0E0E0),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: FlutterFlowDropDown(
                                    initialOption: '# of Rooms',
                                    options: ['# of Rooms', '2', '3', '4', '5'],
                                    onChanged: (value) {
                                      setState(() => dropDownValue1 = value);
                                    },
                                    width: 130,
                                    height: 40,
                                    textStyle:
                                        FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF35A594),
                                    ),
                                    fillColor: Colors.white,
                                    elevation: 2,
                                    borderColor: Colors.transparent,
                                    borderWidth: 0,
                                    borderRadius: 20,
                                    margin: EdgeInsets.fromLTRB(8, 4, 8, 4),
                                    hidesUnderline: true,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(40, 0, 0, 0),
                                        child: FlutterFlowDropDown(
                                          options: [
                                            '# of Adult',
                                            '1',
                                            '2\\n',
                                            '3',
                                            '4',
                                            '5\\n',
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
                                            '17',
                                            '18',
                                            '19',
                                            '20',
                                            '21',
                                            '22',
                                            '23',
                                            '24',
                                            '25',
                                            '26',
                                            '27',
                                            '28',
                                            '29',
                                            '30'
                                          ],
                                          onChanged: (value) {
                                            setState(
                                                () => dropDownValue2 = value);
                                          },
                                          width: 150,
                                          height: 50,
                                          textStyle: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF35A594),
                                          ),
                                          fillColor: Colors.white,
                                          elevation: 8,
                                          borderColor: Colors.transparent,
                                          borderWidth: 0,
                                          borderRadius: 80,
                                          margin:
                                              EdgeInsets.fromLTRB(8, 4, 8, 4),
                                          hidesUnderline: true,
                                        ),
                                      )
                                    ],
                                  ),
                                  FlutterFlowDropDown(
                                    options: [
                                      '# of Children',
                                      '1',
                                      '2\\n',
                                      '3',
                                      '4',
                                      '5\\n',
                                      '6',
                                      '7\\n',
                                      '8\\n',
                                      '9\\n',
                                      '10'
                                    ],
                                    onChanged: (value) {
                                      setState(() => dropDownValue3 = value);
                                    },
                                    width: 150,
                                    height: 50,
                                    textStyle:
                                        FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF35A594),
                                    ),
                                    fillColor: Colors.white,
                                    elevation: 8,
                                    borderColor: Colors.transparent,
                                    borderWidth: 0,
                                    borderRadius: 80,
                                    margin: EdgeInsets.fromLTRB(8, 4, 8, 4),
                                    hidesUnderline: true,
                                  )
                                ],
                              ),
                              Container(
                                width: 300,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEEEEEE),
                                  shape: BoxShape.rectangle,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: Alignment(-1, 0.35),
                                      child: IconButton(
                                        onPressed: () async {
                                          await DatePicker.showDatePicker(
                                              context,
                                              showTitleActions: true,
                                              onConfirm: (date) {
                                            setState(() => datePicked1 = date);
                                          }, currentTime: DateTime.now());
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
                                          hintText: 'Checkin date ',
                                          hintStyle: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                        ),
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
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
                                  color: Color(0xFFEEEEEE),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: Alignment(-1, 0.35),
                                      child: IconButton(
                                        onPressed: () async {
                                          await DatePicker.showDatePicker(
                                              context,
                                              showTitleActions: true,
                                              onConfirm: (date) {
                                            setState(() => datePicked2 = date);
                                          }, currentTime: DateTime.now());
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
                                          hintText: 'Checkout date ',
                                          hintStyle: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                        ),
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    FlutterFlowDropDown(
                                      options: [
                                        'Single Room ',
                                        'Deluxe Double Room',
                                        'Deluxe Triple Room\\n',
                                        'Deluxe Quadruple Room',
                                        'Superior King Suite',
                                        'King uite with Balcony\\n',
                                        'Deluxe King Suite',
                                        'Junior Suite\\n',
                                        'Deluxe Double or Twin Room\\n',
                                        'Deluxe Family Room\\n'
                                      ],
                                      onChanged: (value) {
                                        setState(() => dropDownValue4 = value);
                                      },
                                      width: 280,
                                      height: 50,
                                      textStyle:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF35A594),
                                      ),
                                      fillColor: Colors.white,
                                      elevation: 8,
                                      borderColor: Colors.transparent,
                                      borderWidth: 0,
                                      borderRadius: 20,
                                      margin: EdgeInsets.fromLTRB(8, 4, 8, 4),
                                      hidesUnderline: true,
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                child: FFButtonWidget(
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  text: 'Check Availability ',
                                  options: FFButtonOptions(
                                    width: 300,
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
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(4, 0, 0, 20),
                                child: Container(
                                  width: 300,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE0E0E0),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                    child: TextFormField(
                                      controller: textController3,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                      ),
                                      style: GoogleFonts.getFont(
                                        'Open Sans',
                                        color: Color(0xFF455A64),
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
