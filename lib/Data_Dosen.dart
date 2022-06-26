import 'package:flutter/material.dart';


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
          title: Center(child: Text('Dosen STMIK "AMIKBANDUNG"')),
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
      children: [
        Container(
          margin: EdgeInsets.all(30.0),
          child: Center(
            child: Text(
              'Data Dosen STMIK "AMIKBANDUNG"',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: DataTable(
            columns: const <DataColumn>[
              DataColumn(
                label: Text(
                  'No',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
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
                  'Detail',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ],
            rows: <DataRow>[
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('1')),
                  DataCell(Text('20021')),
                  DataCell(Text('Indriani, S.T., M.ENG')),
                  DataCell(Text('Bandung')),
                  DataCell(Text('087857867654')),
                  DataCell(
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/DetailDosen');
                        },
                        child: const Text('Edit')),
                  ),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('2')),
                  DataCell(Text('20021')),
                  DataCell(Text('Indriani, S.T., M.ENG')),
                  DataCell(Text('Bandung')),
                  DataCell(Text('087857867654')),
                  DataCell(
                    TextButton(
                        onPressed: null,
                        child: const Text('Edit')),
                  ),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('3')),
                  DataCell(Text('20021')),
                  DataCell(Text('Indriani, S.T., M.ENG')),
                  DataCell(Text('Bandung')),
                  DataCell(Text('087857867654')),
                  DataCell(
                    TextButton(
                        onPressed: null,
                        child: const Text('Edit')),
                  ),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('4')),
                  DataCell(Text('20021')),
                  DataCell(Text('Indriani, S.T., M.ENG')),
                  DataCell(Text('Bandung')),
                  DataCell(Text('087857867654')),
                  DataCell(
                    TextButton(
                        onPressed: null,
                        child: const Text('Edit')),
                  ),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('5')),
                  DataCell(Text('20021')),
                  DataCell(Text('Indriani, S.T., M.ENG')),
                  DataCell(Text('Bandung')),
                  DataCell(Text('087857867654')),
                  DataCell(
                    TextButton(
                        onPressed: null,
                        child: const Text('Edit')),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
