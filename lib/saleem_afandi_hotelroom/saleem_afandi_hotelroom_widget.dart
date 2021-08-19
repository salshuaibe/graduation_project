import '../deluxe_triple_roomsaleemafand/deluxe_triple_roomsaleemafand_widget.dart';
import '../deluxeroomsaleem/deluxeroomsaleem_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../largedoubleroomsaleem/largedoubleroomsaleem_widget.dart';
import '../saleemafandi/saleemafandi_widget.dart';
import '../singleroomsaleem/singleroomsaleem_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SaleemAfandiHotelroomWidget extends StatefulWidget {
  SaleemAfandiHotelroomWidget({Key key}) : super(key: key);

  @override
  _SaleemAfandiHotelroomWidgetState createState() =>
      _SaleemAfandiHotelroomWidgetState();
}

class _SaleemAfandiHotelroomWidgetState
    extends State<SaleemAfandiHotelroomWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
            color: Color(0xFFB9802A),
            size: 35,
          ),
        ),
        title: Image.asset(
          'assets/images/logo.png',
          width: 150,
          height: 100,
          fit: BoxFit.cover,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: InkWell(
              onTap: () async {
                await launchURL('tel:09 235 5366');
              },
              child: Icon(
                Icons.call,
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
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Saleem Afandi Hotel',
                    style: FlutterFlowTheme.title2.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFF835511),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Icon(
                      Icons.star_sharp,
                      color: Color(0xFFB67512),
                      size: 24,
                    ),
                  ),
                  Icon(
                    Icons.star_outlined,
                    color: Color(0xFFB67512),
                    size: 24,
                  ),
                  Icon(
                    Icons.star_rounded,
                    color: Color(0xFFB67512),
                    size: 24,
                  ),
                  Icon(
                    Icons.star_outlined,
                    color: Color(0xFFB67512),
                    size: 24,
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () async {
                await Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SingleroomsaleemWidget(),
                  ),
                  (r) => false,
                );
              },
              child: ListTile(
                title: Text(
                  'Single Room ',
                  style: FlutterFlowTheme.title3.override(
                    fontFamily: 'Poppins',
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Colors.white,
                dense: false,
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DeluxeTripleRoomsaleemafandWidget(),
                        ),
                      );
                    },
                    child: ListTile(
                      title: Text(
                        'Delux Triple Room ',
                        style: FlutterFlowTheme.title3.override(
                          fontFamily: 'Poppins',
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF303030),
                        size: 20,
                      ),
                      tileColor: Colors.white,
                      dense: false,
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DeluxeroomsaleemWidget(),
                        ),
                      );
                    },
                    child: ListTile(
                      title: Text(
                        'Deluxe Junior Room',
                        style: FlutterFlowTheme.title3.override(
                          fontFamily: 'Poppins',
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF303030),
                        size: 20,
                      ),
                      tileColor: Colors.white,
                      dense: false,
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LargedoubleroomsaleemWidget(),
                        ),
                      );
                    },
                    child: ListTile(
                      title: Text(
                        'Large Double Room',
                        style: FlutterFlowTheme.title3.override(
                          fontFamily: 'Poppins',
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF303030),
                        size: 20,
                      ),
                      tileColor: Colors.white,
                      dense: false,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
