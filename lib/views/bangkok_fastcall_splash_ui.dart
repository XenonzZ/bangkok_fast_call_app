import 'package:bangkok_fast_call_app/views/bangkok_home_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BangkokFastcallSplashUI extends StatefulWidget {
  const BangkokFastcallSplashUI({super.key});

  @override
  State<BangkokFastcallSplashUI> createState() =>
      _BangkokFastcallSplashUIState();
}

class _BangkokFastcallSplashUIState extends State<BangkokFastcallSplashUI> {
  @override
  void initState() {
    Future.delayed(
        Duration(
          seconds: 5,
        ), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => BangkokHomeUI(),
        ),
      );
    });

    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/logo.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
                border: Border.all(
                  color: Colors.yellow,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.05,
            ),
            Text(
              'สายด่วนสถานีตำรวจกรุงเทพมหานคร',
              style: GoogleFonts.kanit(
                fontSize: MediaQuery.of(context).size.width * 0.055,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.05,
            ),
            Text(
              'สถานีตำรวจกรุงเทพมหานคร \nBANGKOK DISTRICT',
              style: GoogleFonts.itim(
                fontSize: MediaQuery.of(context).size.width * 0.05,
                color: Colors.yellow,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
