import 'package:flutter/material.dart';

class FormMahasiswa extends StatefulWidget {
  const FormMahasiswa({Key? key}) : super(key: key);

  @override
  State<FormMahasiswa> createState() => _FormMahasiswaState();
}

class _FormMahasiswaState extends State<FormMahasiswa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Mahasiswa'),
        
      ),
      body: ListView(
        children: [
          createCard('IF20405', "Mobile Programming	", "Indri"),
          createCard('IF20405', "Mobile Programming	", "Indri"),
          createCard('IF20405', "Mobile Programming	", "Indri"),
          createCard('IF20405', "Mobile Programming	", "Indri"),
          createCard('IF20405', "Mobile Programming	", "Indri"),
        ],
      ),
    );
  }
}

Widget createCard(
      String KodeMatkul, String NamaMatkul, String Dosen) {
    return Card(
      child: Container(
        height: 160,
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: ListTile(
                        title: Text(NamaMatkul),
                        subtitle: Text(KodeMatkul),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, top: 8),
                        child: Text(Dosen, textAlign: TextAlign.start),
                      ),
                      flex: 2,
                    )
                  ],
                ),
              ),
              flex: 8,
            ),
          ],
        ),
      ),
      elevation: 8,
      margin: const EdgeInsets.all(10),
    );
  }
