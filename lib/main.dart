import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
    ListView(
          children: [
            Container(
              alignment: Alignment.center,
              height: 170,
              width: 100,
              //color: Colors.black26,
              child: Column(children: [
                Container(
                  width: 100,
                  margin: const EdgeInsets.all(10),
                  child: ClipRRect(borderRadius: BorderRadius.circular(10),
                  child: Image.asset("images/foto.jpg"),),
                )
              ],)
            ),
            Container(
              height: 300,
              width: 10,
              alignment: Alignment.center,
              //color: Colors.black26,
              child: Column(children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    border: Border.all(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  height: 200,
                  margin: EdgeInsets.all(50),
                  child: ClipRRect(borderRadius: BorderRadius.circular(0),
                  child: Column(
                    children: [
                    Container(
                      width: double.infinity,
                      height: 60,
                      //child: const Text("Nama: Yehovan Nugra Agave", textAlign: TextAlign.center,),
                    ),
                    Container(
                      width: double.infinity,
                      child: const Text("Nama: Yehovan Nugra Agave", textAlign: TextAlign.center,),
                    ),
                    Container(
                      width: double.infinity,
                      child: Text("NIM: 20190801188", textAlign: TextAlign.center,),
                    ),
                    Container(
                      width: double.infinity,
                      child: const Text("Kampus: Kebon Jeruk", textAlign: TextAlign.center,),
                    ),
                    Container(
                      width: double.infinity,
                      child: Text("Jurusan: Teknik Informatika", textAlign: TextAlign.center),
                    ),
                    Container(
                      width: double.infinity,
                      child: Text("Semester: 6", textAlign: TextAlign.center,),
                    ),
                  ],
                  ),
                ),)
              ],)
            ),
          ],
        ),
    Center(
      child: Text("Mahasiswa Esa Unggul", style: TextStyle(fontSize: 35,foreground: Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2
          ..color = Colors.blue[500]!,),),
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Align(alignment: Alignment.center,),
      Container(
        child: Text("S1 - Esa Unggul University", style: TextStyle(fontSize: 30, color: Colors.blue, fontWeight: FontWeight.bold),),
      ),
      Container(
        child: Text("SMK - PGRI 1 Tangerang", style: TextStyle(fontSize: 30, color: Colors.blue, fontWeight: FontWeight.bold),),)
    ],)
  ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Tugas 3"),
        ),
        body: widgets[currentIndex],
        bottomNavigationBar: ConvexAppBar(
          items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.message, title: 'Pekerjaan'),
          TabItem(icon: Icons.people, title: 'Pendidikan'),],
          initialActiveIndex: 0,
          onTap: (int i){
            setState(() {
              currentIndex = i;
            });
          }
      ),
    ));
  }
}