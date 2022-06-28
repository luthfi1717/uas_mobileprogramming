import 'package:flutter/material.dart';
import 'package:uas_mobileprogramming/Detail_Data_Dosen.dart';
import 'package:uas_mobileprogramming/List_Matakuliah.dart';
import 'package:uas_mobileprogramming/Login_Screen.dart';

class Data_Dosen extends StatefulWidget {
  const Data_Dosen({Key? key}) : super(key: key);

  @override
  _Data_DosenState createState() => _Data_DosenState();
}

class _Data_DosenState extends State<Data_Dosen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Data Dosen',
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
        body: const MyStatelessWidget(),
         drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              child: Text('Mobile Programming', style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/Background.jpg')
                ),
              ),

            ),
            ListTile(
              leading: Icon(Icons.account_circle_outlined ),
              title: const Text('Data Dosen'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Data_Dosen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.apps),
              title: const Text('Matakuliah'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ListMatkul()));
              },
            ),
            SizedBox(
              height: 210,
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: 500,
              height: 80,
              padding: EdgeInsets.only(left: 15),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding:EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Text("Logout",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900
                  ),
                ),
                textColor: Colors.white,
                color: Colors.blueGrey[900],
                onPressed: (){
                  Navigator.push(
                    context,MaterialPageRoute(builder: (_) => LoginScreen()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Column(
          children: [
            SizedBox(height: 30),
            Text(
                'Data Dosen STMIK"AMIKBANDUNG"',
                style: TextStyle(
                  fontSize: 18, 
                  fontWeight: FontWeight.bold,
                ),
            ),
            SizedBox(height: 30),
            Container(
              alignment: Alignment.center,
              child: DataTable(
                columns: const <DataColumn>[
                  DataColumn(
                    label: Text(
                      'NID',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Nama Dosen',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Alamat',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'No Telepon',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Email',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Detail',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
                rows: <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('20021')),
                      DataCell(Text('Indriani, S.T., M.ENG')),
                      DataCell(Text('Bandung')),
                      DataCell(Text('087857867654')),
                      DataCell(Text('Indriani11@gmail.com')),
                      DataCell(
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Detail_Data_Dosen()));
                            },
                            child: const Text('Edit')),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('20021')),
                      DataCell(Text('Indriani, S.T., M.ENG')),
                      DataCell(Text('Bandung')),
                      DataCell(Text('087857867654')),
                      DataCell(Text('Indriani11@gmail.com')),
                      DataCell(
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Detail_Data_Dosen()));
                            },
                            child: const Text('Edit')),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('20021')),
                      DataCell(Text('Indriani, S.T., M.ENG')),
                      DataCell(Text('Bandung')),
                      DataCell(Text('087857867654')),
                      DataCell(Text('Indriani11@gmail.com')),
                      DataCell(
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Detail_Data_Dosen()));
                            },
                            child: const Text('Edit')),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('20021')),
                      DataCell(Text('Indriani, S.T., M.ENG')),
                      DataCell(Text('Bandung')),
                      DataCell(Text('087857867654')),
                      DataCell(Text('Indriani11@gmail.com')),
                      DataCell(
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Detail_Data_Dosen()));
                            },
                            child: const Text('Edit')),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('20021')),
                      DataCell(Text('Indriani, S.T., M.ENG')),
                      DataCell(Text('Bandung')),
                      DataCell(Text('087857867654')),
                      DataCell(Text('Indriani11@gmail.com')),
                      DataCell(
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Detail_Data_Dosen()));
                            },
                            child: const Text('Edit')),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
