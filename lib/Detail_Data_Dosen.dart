import 'package:flutter/material.dart';

class Detail_Data_Dosen extends StatefulWidget {
  const Detail_Data_Dosen({Key? key}) : super(key: key);

  @override
  State<Detail_Data_Dosen> createState() => _Detail_Data_DosenState();
}

class _Detail_Data_DosenState extends State<Detail_Data_Dosen> {
  final TextEditingController _nidController = TextEditingController();
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _alamatController = TextEditingController();
  final TextEditingController _noteleponController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Informasi Dosen',
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
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Edit Data in Here!'),
              ],
            ),
          ),
          Container(
            width: 1000,
            child: Column(
              children: <Widget>[
                SizedBox(height: 12),
                Container(
                  width: 390,
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 20),
                        Row(children: <Widget>[
                          SizedBox(width: 10),
                          Icon(
                            Icons.home,
                            color: Colors.blue,
                            size: 24.0,
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[],
                          ),
                        ]),
                        SizedBox(height: 25),
                        Row(children: <Widget>[
                          SizedBox(width: 10),
                          Icon(
                            Icons.person,
                            color: Colors.blue,
                            size: 24.0,
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Gender',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Montserrat',
                                      color: Colors.blue.withOpacity(1.0)),
                                  textAlign: TextAlign.center),
                              SizedBox(height: 8),
                              Text('Female',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Acme',
                                      color: Colors.black.withOpacity(1.0)),
                                  textAlign: TextAlign.center),
                            ],
                          ),
                        ]),
                        SizedBox(height: 25),
                        Row(children: <Widget>[
                          SizedBox(width: 10),
                          Icon(
                            Icons.calendar_today,
                            color: Colors.blue,
                            size: 24.0,
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Date of birth',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Montserrat',
                                      color: Colors.blue.withOpacity(1.0)),
                                  textAlign: TextAlign.center),
                              SizedBox(height: 8),
                              Text('2001-12-19',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Acme',
                                      color: Colors.black.withOpacity(1.0)),
                                  textAlign: TextAlign.center),
                            ],
                          ),
                        ]),
                        SizedBox(height: 25),
                        Row(children: <Widget>[
                          SizedBox(width: 10),
                          Icon(
                            Icons.phone_android,
                            color: Colors.blue,
                            size: 24.0,
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Mobile',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Montserrat',
                                      color: Colors.blue.withOpacity(1.0)),
                                  textAlign: TextAlign.center),
                              SizedBox(height: 8),
                              Text('+62 838-2214-6084',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Acme',
                                      color: Colors.black.withOpacity(1.0)),
                                  textAlign: TextAlign.center),
                            ],
                          ),
                        ]),
                        SizedBox(height: 25),
                        Row(children: <Widget>[
                          SizedBox(width: 10),
                          Icon(
                            Icons.email,
                            color: Colors.blue,
                            size: 24.0,
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Email',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Montserrat',
                                      color: Colors.blue.withOpacity(1.0)),
                                  textAlign: TextAlign.center),
                              SizedBox(height: 8),
                              Text('elfaranadivaa191201@gmail.com',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Acme',
                                      color: Colors.black.withOpacity(1.0)),
                                  textAlign: TextAlign.center),
                            ],
                          ),
                        ]),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
