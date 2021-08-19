import '../flutter_flow/flutter_flow_drop_down_template.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../homepage/homepage_widget.dart';
import '../palestiniancity/palestiniancity_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../backend/Hotel.dart';

class SearchwithinbudgetWidget extends StatefulWidget {
  SearchwithinbudgetWidget({Key key}) : super(key: key);

  @override
  _SearchwithinbudgetWidgetState createState() =>
      _SearchwithinbudgetWidgetState();
}

class _SearchwithinbudgetWidgetState extends State<SearchwithinbudgetWidget> {
  String dropDownValue;
  TextEditingController textController1;
  TextEditingController textController2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController(text: 'Enter your budget');
    textController2 = TextEditingController();
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
                builder: (context) => PalestiniancityWidget(),
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
          'Click Travel',
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.title3.override(
            fontFamily: 'Poppins',
            color: Color(0xFF9C6513),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomepageWidget(),
                  ),
                );
              },
              child: Icon(
                Icons.home,
                color: Color(0xFFB67512),
                size: 35,
              ),
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
                      color: Colors.white,
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
                              Container(
                                width: 290,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE6E3E3),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: TextFormField(
                                  controller: textController1,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'eg:1500',
                                    hintStyle:
                                    FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF9E9E9E),
                                      fontWeight: FontWeight.w600,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    contentPadding:
                                    EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  ),
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF9E9E9E),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Container(
                                  width: 290,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEEEEEE),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: FlutterFlowDropDown(
                                    options: [
                                      'Nablus',
                                      'Bethlehem',
                                      'Ramallah',
                                      'Jericho',
                                      'Hebron '
                                    ],
                                    onChanged: (value) {
                                      setState(() => dropDownValue = value);
                                    },
                                    width: 130,
                                    height: 40,
                                    textStyle:
                                    FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                                    fillColor: Colors.white,
                                    elevation: 2,
                                    borderColor: Color(0xFF835511),
                                    borderWidth: 0,
                                    borderRadius: 30,
                                    margin: EdgeInsets.fromLTRB(8, 4, 8, 4),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                                child: FFButtonWidget(
                                  onPressed: () {
                                    Hotel hotel =Hotel();
                                    hotel.city = dropDownValue;
                                      hotel.price = int.parse(textController1.text);
                                    print('Button pressed ...');
                                    List<Hotel> h ;
                                    hotel.priceAndCity().then((hotelsList) =>{
                                      print(hotelsList),
                                      textController2.text = "",
                                      for(int i=0; i<hotelsList.length ; i++){
                                        textController2.text = textController2.text + " Name: "+hotelsList[i].hotal_name+
                                            " City: "+hotelsList[i].city +" num_of_rooms: " + hotelsList[i].num_of_rooms + "\n\n",
                                      }
                                    }


                                  );},
                                  text: 'Show Available Hotels',
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
                              )
                            ],
                          ),
                          Expanded(
                            child: ListView(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              children: [
                                Container(
                                  width: 200,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEEEEEE),
                                  ),
                                  child: TextFormField(
                                    controller: textController2,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: '[Some hint text...]',
                                      hintStyle:
                                      FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Poppins',
                                      ),
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
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
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
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
