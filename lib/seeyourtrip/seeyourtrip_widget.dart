import 'package:graduation_project/backend/api_requests/offer.dart';
import 'package:graduation_project/backend/user.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../homepage_english/homepage_english_widget.dart';
import '../palestiniancity/palestiniancity_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SeeyourtripWidget extends StatefulWidget {
  final User user;
  SeeyourtripWidget({Key key, @required this.user}) : super(key: key);

  @override
  _SeeyourtripWidgetState createState() => _SeeyourtripWidgetState();
}

class _SeeyourtripWidgetState extends State<SeeyourtripWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  List<Offer> offerItemsListUI = <Offer>[];
  Future<bool> updateListView;

  @override
  void initState() {
    super.initState();
    updateListView = getData();
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
                builder: (context) => HomepageEnglishWidget(user: widget.user),
              ),
            );
          },
          child: Icon(
            Icons.home,
            color: Color(0xFF9C6513),
            size: 35,
          ),
        ),
        title: Text(
          'Click Travel',
          style: FlutterFlowTheme.title2.override(
            fontFamily: 'Poppins',
            color: Color(0xFF9C6513),
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFF1F4F8),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PalestiniancityWidget(),
            ),
          );
        },
        backgroundColor: Color(0xFF34A294),
        elevation: 8,
        child: InkWell(
          onTap: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PalestiniancityWidget(),
              ),
            );
          },
          child: Icon(
            Icons.airplanemode_active,
            color: Color(0xFF9C6513),
            size: 28,
          ),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child:getOfferViews() ,
          )
        ],
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
                return Row(
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
                                          'Deluxe Double or Twin Room': 'some room'))))))))}   #Rooms:${offerItemsListUI[index].num_of_rooms} ',
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
    await offer.getAllReservations();
    this.offerItemsListUI = offer.offersList;
    return true;
  }
}
