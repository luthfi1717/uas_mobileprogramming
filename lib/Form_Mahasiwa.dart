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
    );
  }
}
