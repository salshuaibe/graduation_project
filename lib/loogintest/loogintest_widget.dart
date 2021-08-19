import 'dart:math';

import 'package:graduation_project/adminpage/adminpage_widget.dart';
import 'package:graduation_project/alflelawlelaadmin/alflelawlelaadmin_widget.dart';
import 'package:graduation_project/yaldizadmin/yaldizadmin_widget.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../homepage_english/homepage_english_widget.dart';
import '../resetpassword/resetpassword_widget.dart';
import '../signupnew/signupnew_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../backend/user.dart';


class LoogintestWidget extends StatefulWidget {
  String eee;
  LoogintestWidget({Key key}) : super(key: key);

  @override
  _LoogintestWidgetState createState() => _LoogintestWidgetState();
}


class _LoogintestWidgetState extends State<LoogintestWidget> {
  TextEditingController textController1;
  TextEditingController textController2;
  bool passwordVisibility;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
    final User user = User();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        key: scaffoldKey,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: AppBar(
            backgroundColor: Color(0xFF35A594),
            automaticallyImplyLeading: false,
            flexibleSpace: Padding(
              padding: EdgeInsets.fromLTRB(100, 30, 0, 0),
              child: Text(
                'Click Travel ',
                style: FlutterFlowTheme.title3.override(
                  fontFamily: 'Lora',
                  color: Color(0xFF835511),
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            actions: [],
            elevation: 4,
          ),
        ),
        body: SafeArea(
          child: Stack(
            children: [
              Align(
                alignment: Alignment(0, -1),
                child: Image.asset(
                  'assets/images/logo.png',
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.cover,
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
                        color: Color(0xEEFFFFFF),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                              child: Column(
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
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(20, 0, 20, 0),
                                        child: TextFormField(
                                          controller: textController1,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Email',
                                            hintStyle: GoogleFonts.getFont(
                                              'Open Sans',
                                              color: Color(0xFF835511),
                                              fontWeight: FontWeight.normal,
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
                                          style: GoogleFonts.getFont(
                                            'Open Sans',
                                            color: Color(0xFF835511),
                                            fontWeight: FontWeight.normal,
                                          ),
                                          keyboardType:
                                              TextInputType.emailAddress,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(4, 0, 4, 20),
                                    child: Container(
                                      width: 300,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE0E0E0),
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(20, 0, 20, 0),
                                        child: TextFormField(
                                          controller: textController2,
                                          obscureText: !passwordVisibility,
                                          decoration: InputDecoration(
                                            hintText: 'Password',
                                            hintStyle: GoogleFonts.getFont(
                                              'Open Sans',
                                              color: Color(0xFF835511),
                                              fontWeight: FontWeight.normal,
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
                                            suffixIcon: InkWell(
                                              onTap: () => setState(
                                                () => passwordVisibility =
                                                    !passwordVisibility,
                                              ),
                                              child: Icon(
                                                passwordVisibility
                                                    ? Icons.visibility_outlined
                                                    : Icons
                                                        .visibility_off_outlined,
                                                size: 22,
                                              ),
                                            ),
                                          ),
                                          style: GoogleFonts.getFont(
                                            'Open Sans',
                                            color: Color(0xFF835511),
                                            fontWeight: FontWeight.normal,
                                          ),
                                          validator: (val) {
                                            if (val.isEmpty) {
                                              return 'Field is required';
                                            }

                                            return null;
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                    child: FFButtonWidget(
                                      onPressed: () async {

                                        user.email = textController1.text.toString();
                                        user.password = textController2.text.toString();


                                         String eee;

                                         user.loginToBackend().then((correctSign) =>{
                                           if (correctSign == true){
                                             print(user.userType),
                                             if (user.userType=='admin'){

                                               Navigator.push(context,
                                                 MaterialPageRoute(
                                                   builder: (context) =>
                                                       AdminpageWidget(),),),}
                                           else if(user.userType=='normal'){
                                           eee=user.email,
                                               print("user:" +user.toString()),
                                                Navigator.push(context,MaterialPageRoute(builder: (context) =>
                                                 HomepageEnglishWidget(user:this.user)),),





                                           }
                                             else if(user.userType=='alflyla manger'){
                                                 eee=user.email,
                                                 print("user:" +user.toString()),
                                                 Navigator.push(context,MaterialPageRoute(builder: (context) =>
                                                     AlflelawlelaadminWidget()),),





                                               }
                                               else if(user.userType=='yaldiz manger'){
                                                   eee=user.email,
                                                   print("user:" +user.toString()),
                                                   Navigator.push(context,MaterialPageRoute(builder: (context) =>
                                                       YaldizadminWidget()),),





                                                 }





                                           }




                                         });

                                      },
                                      text: 'Sign in',
                                      options: FFButtonOptions(
                                        width: 300,
                                        height: 50,
                                        color: Color(0xFF35A594),
                                        textStyle: GoogleFonts.getFont(
                                          'Open Sans',
                                          color: Color(0xFF835511),
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
                                  InkWell(
                                    onTap: () async {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ResetpasswordWidget(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Forgot password?',
                                      style: GoogleFonts.getFont(
                                        'Open Sans',
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 35, 0, 35),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 100,
                                          height: 38,
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment:
                                                    Alignment(-0.7, -0.01),
                                                child: Container(
                                                  width: 18,
                                                  height: 18,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.network(
                                                    'https://facebookbrand.com/wp-content/uploads/2019/04/f_logo_RGB-Hex-Blue_512.png?w=512&h=512',
                                                  ),
                                                ),
                                              ),
                                              FFButtonWidget(
                                                onPressed: () {
                                                  print('Button pressed ...');
                                                },
                                                text: 'Sign in',
                                                icon: Icon(
                                                  Icons.add,
                                                  color: Colors.transparent,
                                                  size: 20,
                                                ),
                                                options: FFButtonOptions(
                                                  width: 100,
                                                  height: 38,
                                                  color: Colors.transparent,
                                                  textStyle:
                                                      GoogleFonts.getFont(
                                                    'Open Sans',
                                                    color: Color(0xFF616161),
                                                    fontSize: 14,
                                                  ),
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFAAAAAA),
                                                    width: 0.5,
                                                  ),
                                                  borderRadius: 0,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(20, 0, 0, 0),
                                          child: Container(
                                            width: 100,
                                            height: 38,
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment(-0.7, -0.01),
                                                  child: Container(
                                                    width: 18,
                                                    height: 18,
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Image.network(
                                                      'https://i0.wp.com/nanophorm.com/wp-content/uploads/2018/04/google-logo-icon-PNG-Transparent-Background.png?w=1000&ssl=1',
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment: Alignment(0, 0),
                                                  child: FFButtonWidget(
                                                    onPressed: () {
                                                      print(
                                                          'Button pressed ...');
                                                    },
                                                    text: 'Sign in',
                                                    icon: Icon(
                                                      Icons.add,
                                                      color: Colors.transparent,
                                                      size: 20,
                                                    ),
                                                    options: FFButtonOptions(
                                                      width: 100,
                                                      height: 38,
                                                      color: Colors.transparent,
                                                      textStyle:
                                                          GoogleFonts.getFont(
                                                        'Open Sans',
                                                        color:
                                                            Color(0xFF616161),
                                                        fontSize: 14,
                                                      ),
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFFAAAAAA),
                                                        width: 0.5,
                                                      ),
                                                      borderRadius: 0,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 10, 0),
                                        child: Text(
                                          'Don\'t have an account?',
                                          style: GoogleFonts.getFont(
                                            'Open Sans',
                                            color: Colors.black,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  SignupnewWidget(),
                                            ),
                                          );
                                        },
                                        child: Text(
                                          'Sign Up',
                                          style: GoogleFonts.getFont(
                                            'Open Sans',
                                            color: Color(0xFF35A594),
                                            fontSize: 14,
                                          ),
                                        ),
                                      )
                                    ],
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
      ),
    );
  }
}
