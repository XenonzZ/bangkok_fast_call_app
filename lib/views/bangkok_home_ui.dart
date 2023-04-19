import 'package:bangkok_fast_call_app/models/DISTRICTLIST.dart';
import 'package:bangkok_fast_call_app/views/bangkok_fastcall_detial_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BangkokHomeUI extends StatefulWidget {
  const BangkokHomeUI({super.key});

  @override
  State<BangkokHomeUI> createState() => _BangkokHomeUIState();
}

class _BangkokHomeUIState extends State<BangkokHomeUI> {
  List<DistrictList> districtList = [
    DistrictList(
      DistrictName: 'สถานีตำรวจนครบาลจักรวรรดิ',
      DistricWeb: 'https://www.chakrawat.com/',
      DistrictFacebook: '-',
      DistrictImage: 'b1.png',
      DistrictPhone: '02 225 4094',
      DistrictLatitude: '',
      DistrictLongtitude: '',
    ),
    DistrictList(
      DistrictName: 'สถานีตำรวจนครบาลบางรัก',
      DistricWeb: 'https://bangrakmetropolice.com/',
      DistrictFacebook: '-',
      DistrictImage: 'b2.jpg',
      DistrictPhone: '02 234 0242',
      DistrictLatitude: '',
      DistrictLongtitude: '',
    ),
    DistrictList(
      DistrictName: 'สถานีตำรวจนครบาลสำราญราษฎร์',
      DistricWeb: 'https://www.royalthaipolice.go.th/station.php',
      DistrictFacebook: '-',
      DistrictImage: 'b3.jpg',
      DistrictPhone: '02 226 2136',
      DistrictLatitude: '',
      DistrictLongtitude: '',
    ),
    DistrictList(
      DistrictName: 'สถานีตำรวจนครบาลลุมพินี',
      DistricWeb: 'https://lumpini.metro.police.go.th/',
      DistrictFacebook: '-',
      DistrictImage: 'b4.png',
      DistrictPhone: '02 255 5994',
      DistrictLatitude: '',
      DistrictLongtitude: '',
    ),
    DistrictList(
      DistrictName: 'สถานีตำรวจนครบาลหนองแขม',
      DistricWeb: 'https://www.nongkhaempolice.com/',
      DistrictFacebook: '-',
      DistrictImage: 'b5.jpg',
      DistrictPhone: '02 429 3568',
      DistrictLatitude: '',
      DistrictLongtitude: '',
    ),
    DistrictList(
      DistrictName: 'สถานีตำรวจนครบาลบางเขน',
      DistricWeb: 'https://bangkhen.metro.police.go.th/home/',
      DistrictFacebook: '-',
      DistrictImage: 'b6.jpg',
      DistrictPhone: '02-377-5494',
      DistrictLatitude: '',
      DistrictLongtitude: '',
    ),
    DistrictList(
      DistrictName: 'สถานีตำรวจนครบาลบางขุนเทียน',
      DistricWeb: 'https://www.royalthaipolice.go.th/station.php',
      DistrictFacebook: '-',
      DistrictImage: 'b7.jpg',
      DistrictPhone: '02 415 0671',
      DistrictLatitude: '',
      DistrictLongtitude: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          'สายด่วนสถานีตำรวจกรุงเพมหานคร',
          style: GoogleFonts.kanit(),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.33,
            child: Image.asset(
              'assets/images/logo1.jpg',
              fit: BoxFit.fitWidth,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(),
              itemCount: districtList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BangkokFastcallDetialUI(
                          districtList: districtList[index],
                        ),
                      ),
                    );
                  },
                  leading: CircleAvatar(
                      radius: 25,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/' + districtList[index].DistrictImage,
                        ),
                      )),
                  title: Text(
                    districtList[index].DistrictName,
                    style: GoogleFonts.kanit(),
                  ),
                  subtitle: Text(
                    'Tel: ' + districtList[index].DistrictPhone,
                    style: GoogleFonts.kanit(),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
        ],
      ),
    );
  }
}
