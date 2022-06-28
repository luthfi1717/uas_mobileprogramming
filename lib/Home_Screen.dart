import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:uas_mobileprogramming/Data_Dosen.dart';
import 'package:uas_mobileprogramming/List_Matakuliah.dart';
import 'package:uas_mobileprogramming/Login_Screen.dart';
import 'package:uas_mobileprogramming/Upload_Materi.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Dashboard',
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
      body: const Center(
        child: Text('Selamat Datang di Aplikasi Mobile Programming', style: TextStyle(color: Colors.black)),
       ),
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
              height: 450,
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
    );
  }

}
