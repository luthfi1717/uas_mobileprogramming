import 'package:flutter/material.dart';
import 'package:uas_mobileprogramming/Upload_Materi.dart';

class ListMatkul extends StatefulWidget {
  const ListMatkul({Key? key}) : super(key: key);

  @override
  _ListMatkulState createState() => _ListMatkulState();
}

class _ListMatkulState extends State<ListMatkul> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Mata Kuliah',
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
                'List Mata Kuliah',
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
                      'Kode Matkul',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Nama Matakuliah',
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
                      DataCell(Text('	IF20405')),
                      DataCell(Text('Mobile Programming')),
                      DataCell(
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const UploadMateri()));
                            },
                            child: const Text('Upload')),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('	IF20405')),
                      DataCell(Text('Mobile Programming')),
                      DataCell(
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const UploadMateri()));
                            },
                            child: const Text('Upload')),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('	IF20405')),
                      DataCell(Text('Mobile Programming')),
                      DataCell(
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const UploadMateri()));
                            },
                            child: const Text('Upload')),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('	IF20405')),
                      DataCell(Text('Mobile Programming')),
                      DataCell(
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const UploadMateri()));
                            },
                            child: const Text('Upload')),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('	IF20405')),
                      DataCell(Text('Mobile Programming')),
                      DataCell(
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const UploadMateri()));
                            },
                            child: const Text('Upload')),
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
