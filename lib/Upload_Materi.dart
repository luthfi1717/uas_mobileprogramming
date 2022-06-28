import 'package:flutter/material.dart';

class UploadMateri extends StatefulWidget {
  const UploadMateri({Key? key}) : super(key: key);

  @override
  State<UploadMateri> createState() => _UploadMateriState();
}

class _UploadMateriState extends State<UploadMateri> {
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
          'Materi',
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
                Text('Upload Materi in Here!',
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
                  width: 380,
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 5),
                        TextField(
                          controller: _nidController,
                          decoration: const InputDecoration(
                            labelText: 'Pertemuan',
                            icon: Icon(
                              Icons.handshake,
                              color: Color(0xff00aec4),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        TextField(
                          controller: _nidController,
                          decoration: const InputDecoration(
                            labelText: 'Judul Materi',
                            icon: Icon(
                              Icons.label,
                              color: Color(0xff00aec4),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        TextField(
                          controller: _nidController,
                          decoration: const InputDecoration(
                            labelText: 'Deskripsi',
                            icon: Icon(
                              Icons.assignment_outlined,
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
                  onPressed: (null), child: Text('Upload')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
