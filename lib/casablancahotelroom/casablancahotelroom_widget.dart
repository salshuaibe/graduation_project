import '../bedin4_bed_female_dormitory_room/bedin4_bed_female_dormitory_room_widget.dart';
import '../casablanca_hotels/casablanca_hotels_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../standard_quadruple_roomcasablanca/standard_quadruple_roomcasablanca_widget.dart';
import '../standard_single_roomcasaclanca/standard_single_roomcasaclanca_widget.dart';
import '../standard_triple_roomcasablanca/standard_triple_roomcasablanca_widget.dart';
import '../standard_twin_roomcasblanca/standard_twin_roomcasblanca_widget.dart';
import '../standarddoubleroomcasablanca/standarddoubleroomcasablanca_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CasablancahotelroomWidget extends StatefulWidget {
  CasablancahotelroomWidget({Key key}) : super(key: key);

  @override
  _CasablancahotelroomWidgetState createState() =>
      _CasablancahotelroomWidgetState();
}

class _CasablancahotelroomWidgetState extends State<CasablancahotelroomWidget> {
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
                builder: (context) => CasablancaHotelsWidget(),
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
                await launchURL('tel:02 298 7658');
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
                    'Casablanca Hotel',
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
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () async {
                await Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StandardSingleRoomcasaclancaWidget(),
                  ),
                  (r) => false,
                );
              },
              child: ListTile(
                title: Text(
                  'Standard Single Room',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.title3.override(
                    fontFamily: 'Poppins',
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
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
                              StandarddoubleroomcasablancaWidget(),
                        ),
                      );
                    },
                    child: ListTile(
                      title: Text(
                        'Standard Double Room',
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
                          builder: (context) =>
                              StandardTripleRoomcasablancaWidget(),
                        ),
                      );
                    },
                    child: ListTile(
                      title: Text(
                        'Standard Triple Room',
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
                          builder: (context) =>
                              StandardTwinRoomcasblancaWidget(),
                        ),
                      );
                    },
                    child: ListTile(
                      title: Text(
                        'Standard Twin Room',
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
                          builder: (context) =>
                              StandardQuadrupleRoomcasablancaWidget(),
                        ),
                      );
                    },
                    child: ListTile(
                      title: Text(
                        'Standard Quadruple Room',
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
                          builder: (context) =>
                              Bedin4BedFemaleDormitoryRoomWidget(),
                        ),
                      );
                    },
                    child: ListTile(
                      title: Text(
                        'Dormitory Room',
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
