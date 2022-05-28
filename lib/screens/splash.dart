
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';


class SplashWidget extends StatefulWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  _SplashWidgetState createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.transparent,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Stack(
          children: [
            Image.network(
              "https://i.pinimg.com/originals/38/a0/e0/38a0e09af77fd8a8956c760379acd0ba.jpg",
              // 'https://www.itl.cat/pngfile/big/167-1673914_man-made-kuwait-city-mobile-wallpaper-kuwait-city.jpg',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              fit: BoxFit.cover,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              decoration: BoxDecoration(
                color: Color(0x5B000000),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Where Insights Hit The Sky',
                                style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFF0EEEA),
                                    ),
                              ),
                              Text(
                                'Take Your Step in The Success World',
                                style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF7E8393),
                                    ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.05, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      
                                        ElevatedButton(
                                      onPressed: () => GoRouter.of(context).push('/home'),
                                      child: const Text(
                                        " Get Started",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500),
                                            
                                           
                                            
                                            
                                      ))
                                      
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
