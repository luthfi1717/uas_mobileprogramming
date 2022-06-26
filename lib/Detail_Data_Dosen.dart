import 'package:flutter/material.dart';


class Detail_Data_Dosen extends StatefulWidget {
  const Detail_Data_Dosen({Key? key}) : super(key: key);

  @override
  State<Detail_Data_Dosen> createState() => _Detail_Data_DosenState();
}

class _Detail_Data_DosenState extends State<Detail_Data_Dosen> {
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        centerTitle: true,
        title: const Text('Informasi Dosen',
          style: TextStyle(fontFamily: 'Montserrat'),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xffffffff), Color(0xff00aec4)],
              begin: Alignment.center,
              end: Alignment.center,
            ),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 275,
            width: 1000,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xffffffff), Color(0xff00aec4)],
                begin: Alignment.center,
                end: Alignment.center,
              ),
            ),
            // child : Column(
            //   children: <Widget>[
            //     Column(
            //       mainAxisAlignment: MainAxisAlignment.start,
            //       crossAxisAlignment: CrossAxisAlignment.center,
            //       children: <Widget>[
            //         SizedBox(height: 60),
            //         CircleAvatar(
            //           radius: 45,
            //           backgroundImage: AssetImage('assets/Profile/profile.jpg'),
            //         ),
            //         SizedBox(height: 10),
            //         Text('Elfara Nadiva Putri',
            //             style: TextStyle(fontSize: 20, fontFamily: 'Acme', color: Colors.white.withOpacity(1.0)),
            //             textAlign: TextAlign.center),
            //         SizedBox(height: 10),
            //         Text('Mahasiswi STMIK AMIK BANDUNG',
            //             style: TextStyle(fontSize: 14, fontFamily: 'Acme', color: Colors.white.withOpacity(1.0)),
            //             textAlign: TextAlign.center),
            //         SizedBox(height: 40),
            //         Text('ABOUT',
            //             style: TextStyle(fontSize: 14, fontFamily: 'Acme',  color: Colors.white.withOpacity(1.0)),
            //             textAlign: TextAlign.center),
            //       ],
            //     ),
            //   ],
            // ),
          ),
        ],
      ),
    );
  }
}
