import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../nablus1/nablus1_widget.dart';
import '../oldcity/oldcity_widget.dart';
import '../sebastia1/sebastia1_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArchologicalsitenablusWidget extends StatefulWidget {
  ArchologicalsitenablusWidget({Key key}) : super(key: key);

  @override
  _ArchologicalsitenablusWidgetState createState() =>
      _ArchologicalsitenablusWidgetState();
}

class _ArchologicalsitenablusWidgetState
    extends State<ArchologicalsitenablusWidget> {
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
                builder: (context) => Nablus1Widget(),
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
        actions: [],
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
                    'Archaeological Sites',
                    style: FlutterFlowTheme.title2.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFF835511),
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () async {
                await Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Sebastia1Widget(),
                  ),
                  (r) => false,
                );
              },
              child: ListTile(
                title: Text(
                  'Sebastia',
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
                          builder: (context) => OldcityWidget(),
                        ),
                      );
                    },
                    child: ListTile(
                      title: Text(
                        'Old City',
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
