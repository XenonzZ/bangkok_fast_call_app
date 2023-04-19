import 'package:bangkok_fast_call_app/models/DISTRICTLIST.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BangkokFastcallDetialUI extends StatefulWidget {
  DistrictList? districtList;
  BangkokFastcallDetialUI({super.key, this.districtList});

  @override
  State<BangkokFastcallDetialUI> createState() =>
      _BangkokFastcallDetialUIState();
}

class _BangkokFastcallDetialUIState extends State<BangkokFastcallDetialUI> {
  //เมธอดสำหรัยเรียกใช้งานการโทร

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          'สายด่วนสถานีตำรวจกรุงเทพมหานคร (' +
              widget.districtList!.DistrictName +
              ')',
          style: GoogleFonts.kanit(),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/' + widget.districtList!.DistrictImage,
                    ),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: Colors.yellow,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1,
                ),
                child: ListTile(
                  onTap: () {},
                  leading: Icon(
                    FontAwesomeIcons.store,
                    color: Colors.black,
                  ),
                  title: Text(
                    'ชื่อสถานีตำรวจ : ' + widget.districtList!.DistrictName,
                    style: GoogleFonts.kanit(),
                  ),
                  tileColor: Colors.cyanAccent,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.1),
                child: ListTile(
                  onTap: () {
                    _makePhoneCall(widget.districtList!.DistrictPhone);
                  },
                  leading: Icon(
                    FontAwesomeIcons.phone,
                    color: Colors.blueAccent,
                  ),
                  title: Text(
                    'เบอร์โทร : ' + widget.districtList!.DistrictPhone,
                    style: GoogleFonts.kanit(),
                  ),
                  tileColor: Colors.cyanAccent,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1,
                ),
                child: ListTile(
                  onTap: () {
                    _launchInBrowser(Uri.parse('https://www.facebook.com/' +
                        widget.districtList!.DistrictFacebook));
                  },
                  leading: Icon(
                    FontAwesomeIcons.facebook,
                    color: Colors.blue,
                  ),
                  title: Text(
                    'Facebook : ' + widget.districtList!.DistrictFacebook,
                    style: GoogleFonts.kanit(),
                  ),
                  tileColor: Colors.cyanAccent,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1,
                ),
                child: ListTile(
                  onTap: () {
                    _launchInBrowser(
                        Uri.parse('' + widget.districtList!.DistricWeb));
                  },
                  leading: Icon(
                    FontAwesomeIcons.globe,
                    color: Colors.grey,
                  ),
                  title: Text(
                    ' เว็ปไซต์ : ' + widget.districtList!.DistricWeb,
                    style: GoogleFonts.kanit(),
                  ),
                  tileColor: Colors.cyanAccent,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
