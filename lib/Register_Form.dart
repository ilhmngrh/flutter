import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class registerForm extends StatelessWidget{
  TextEditingController nama = TextEditingController();
  TextEditingController alamat = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController no_hp = TextEditingController();

  void simpan(){

  }

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    'Register',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.pink,
                    ),
                  )
                ],
              ),
              ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: TextField(
                controller: nama,
                decoration: InputDecoration(
                  labelText: 'Nama',
                  hintText: 'Masukkan nama Anda...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: TextField(
                controller: nama,
                decoration: InputDecoration(
                  labelText: 'Alamat',
                  hintText: 'Masukkan alamat Anda...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: TextField(
                controller: nama,
                decoration: InputDecoration(
                  labelText: 'Nomor Handphone',
                  hintText: 'Masukkan nomor handphone Anda...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: TextField(
                controller: nama,
                decoration: InputDecoration(
                  labelText: 'Username',
                  hintText: 'Masukkan username Anda...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: TextField(
                controller: nama,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Masukkan password Anda...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
              width: MediaQuery.of(context).size.width - 20,
              child: ElevatedButton(
                onPressed: simpan,
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                  minimumSize: Size(150, 50),
                ),
                child: Text(
                  "Save",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    ),
                    
                ),
            ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: TextButton(
                onPressed: (){
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp(),),
                );
                }, 
                child: Text(
                  'Login?',
                  style: TextStyle(
                    color: Colors.blue
                  ),
                )
                ),
            ),
          ]),
      ),
    );
  }
}