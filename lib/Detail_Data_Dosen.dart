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
      resizeToAvoidBottomInset: false,
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
            height: 200,
            width: 1000,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xffffffff), Color(0xff00aec4)],
                begin: Alignment.center,
                end: Alignment.center,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Edit Data in Here!',
                 style: TextStyle(
                  fontSize: 14, 
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
                ),
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
                        SizedBox(height: 5),
                        TextField(
                          controller: _nidController,
                          decoration: const InputDecoration(
                            labelText: 'NID',
                            icon: Icon(
                              Icons.assignment_outlined,
                              color: Color(0xff00aec4),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        TextField(
                          controller: _nidController,
                          decoration: const InputDecoration(
                            labelText: 'Nama',
                            icon: Icon(
                              Icons.account_circle_outlined,
                              color: Color(0xff00aec4),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        TextField(
                          controller: _nidController,
                          decoration: const InputDecoration(
                            labelText: 'Alamat',
                            icon: Icon(
                              Icons.approval_outlined,
                              color: Color(0xff00aec4),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        TextField(
                          controller: _nidController,
                          decoration: const InputDecoration(
                            labelText: 'Kota',
                            icon: Icon(
                              Icons.location_city_outlined,
                              color: Color(0xff00aec4),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        TextField(
                          controller: _nidController,
                          decoration: const InputDecoration(
                            labelText: 'No Telepon',
                            icon: Icon(
                              Icons.call,
                              color: Color(0xff00aec4),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        TextField(
                          controller: _nidController,
                          decoration: const InputDecoration(
                            labelText: 'Email',
                            icon: Icon(
                              Icons.email_outlined,
                              color: Color(0xff00aec4),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: (null), child: Text('Simpan')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
