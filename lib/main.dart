import 'package:flutter/material.dart';
import 'dart:convert';

void main() {
  String jsonString =
      '{"nama": "Budi Martami", "umur":17, "list_bahasa": ["C++", "Python"]}';

  Map<String, dynamic> mhsJson = jsonDecode(jsonString); //json ke Map

  print("nama: ${mhsJson['nama']}");
  print("umur: ${mhsJson['umur']}");
  print("skill: ${mhsJson['list_bahasa']}");

  //cetak satu-satu
  for (String val in mhsJson['list_bahasa']) {
    print(val);
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   MyAppState createState() {
//     return MyAppState();
//   }
// }

// class MyAppState extends State<MyApp> {
//   final textEditController = TextEditingController();
//   String _nama = "";
//   String pilihanSalam = "pagi";
//   String pilihanSalamOut = "";

//   @override
//   void dispose() {
//     // Clean up the controller when the widget is disposed.
//     textEditController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     List<DropdownMenuItem<String>> salam = [];
//     var itm1 = const DropdownMenuItem<String>(
//       value: "satu",
//       child: Text("1 Januari 2023"),
//     );
//     var itm2 = const DropdownMenuItem<String>(
//       value: "dua",
//       child: Text("2 Januari 2023"),
//     );
//     salam.add(itm1);
//     salam.add(itm2);

//     return MaterialApp(
//       title: 'Hello App',
//       home: Scaffold(
//         appBar: AppBar(
//             leading: FlutterLogo(),
//             backgroundColor: Colors.blueGrey,
//             title: Text('Quiz Flutter'),
//             actions: <Widget>[ButtonNamaKelompok(), ButtonPerjanjian()]),
            
//         body: Center(
          
//        child: ListTile(
//             onTap: () {},
//             leading: Image.network(
//                 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
//             trailing: const Icon(Icons.more_vert),
//             title: const Text('Judul'),
//             subtitle: const Text("ini Subjudul"),
//             tileColor: Colors.white70));
//         ),
//       ),
//   }
// }

// class ButtonNamaKelompok extends StatelessWidget {
//   const ButtonNamaKelompok({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       icon: Icon(Icons.account_circle_rounded),
//       onPressed: () {
//         // icon account di tap
//         showDialog<String>(
//           context: context,
//           builder: (BuildContext context) => AlertDialog(
//             title: const Text('Nama Kelompok'),
//             content: const Text('Nama (email) ; Nama (email)'),
//             actions: <Widget>[
//               TextButton(
//                 onPressed: () => Navigator.pop(context, 'OK'),
//                 child: const Text('OK'),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }

// class ButtonPerjanjian extends StatelessWidget {
//   const ButtonPerjanjian({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       icon: Icon(Icons.access_alarm_rounded),
//       onPressed: () {
//         // icon setting ditap
//         const snackBar = SnackBar(
//           duration: Duration(seconds: 20),
//           content: Text('Kami berjanji  ...'),
//         );
//         ScaffoldMessenger.of(context).showSnackBar(snackBar);
//       },
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   MyAppState createState() {
//     return MyAppState();
//   }
// }

// class MyAppState extends State<MyApp> {
//   final _formKey = GlobalKey<FormState>();
//   String _nama = "";

//   @override
//   void dispose() {
//     // Clean up the controller when the widget is disposed.
//     textEditController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Hello App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello'),
//         ),
//         body: Center(
//             child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text('Masukan Nama :'),
//             TextField(
//               controller: textEditController, //controller
//             ),
//             Padding(
//               padding: EdgeInsets.all(20), //20 pixel ke semua arah
//               child: ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     _nama = textEditController.text; //akses text via controller
//                   }); //refresh
//                 },
//                 child: const Text('Klik Ini'),
//               ),
//             ),
//             Text(
//               'Halo $_nama',
//               style: const TextStyle(
//                   fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),
//             ), //hasil disini
//           ],
//         )), //column center
//       ), //Scaffold
//     ); //Material APP
//   }
// }
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: "Flutter Demo",
//         home: Scaffold(
//           appBar: AppBar(
//             title: const Text("Card"),
//           ),
//           body: const MyHomePage(),
//         ));
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//         child: ListTile(
//             onTap: () {},
//             leading: Image.network(
//                 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
//             trailing: const Icon(Icons.more_vert),
//             title: const Text('Judul'),
//             subtitle: const Text("ini Subjudul"),
//             tileColor: Colors.white70));
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Hello App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Tektok'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               //gambar dan @userid
//               Center(
//                   child: Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                     Container(
//                         padding: const EdgeInsets.all(10),
//                         child: Image.asset(
//                           'images/heeseung.jpg',
//                           width: 70,
//                         )),
//                     const Text("@natgeo"),
//                   ])),
//               Container(
//                   padding: const EdgeInsets.all(25),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Column(children: const [Text("24"), Text("Following")]),
//                       Column(children: const [Text("1.7M"), Text("Followers")]),
//                       Column(children: const [Text("8.7M"), Text("Likes")])
//                     ],
//                   )),
//               Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//                 ElevatedButton(
//                     onPressed: () => {}, child: const Text("Message")),
//                 IconButton(
//                   icon: const Icon(Icons.account_box_outlined),
//                   onPressed: () => {},
//                 ),
//                 IconButton(
//                   icon: const Icon(Icons.account_box_outlined),
//                   onPressed: () => {},
//                 ),
//                 IconButton(
//                   icon: const Icon(Icons.account_box_outlined),
//                   onPressed: () => {},
//                 ),
//               ]),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   MyAppState createState() {
//     return MyAppState();
//   }
// }

// class MyAppState extends State<MyApp> {
//   final textEditController = TextEditingController();
//   String _nama = "";
//   String pilihanSalam = "pagi";
//   String pilihanSalamOut = "";

//   @override
//   void dispose() {
//     // Clean up the controller when the widget is disposed.
//     textEditController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     List<DropdownMenuItem<String>> salam = [];
//     var itm1 = const DropdownMenuItem<String>(
//       value: "pagi",
//       child: Text("selamat pagi"),
//     );
//     var itm2 = const DropdownMenuItem<String>(
//       value: "siang",
//       child: Text("selamat siang"),
//     );
//     salam.add(itm1);
//     salam.add(itm2);

//     return MaterialApp(
//       title: 'Hello App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Hello'),
//         ),
//         //harus dibawah langsung Scaffold
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
// // jika ditap
//           },
//           backgroundColor: Colors.red,
//           child: const Icon(Icons.dangerous),
//         ),

//         body: Center(
//             child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             DropdownButton(
//               value: pilihanSalam,
//               items: salam,
//               onChanged: (String? newValue) {
//                 setState(() {
//                   if (newValue != null) {
//                     pilihanSalam = newValue;
//                   }
//                 });
//               },
//             ),
//             Text('Masukan Nama :'),
//             TextField(
//               controller: textEditController, //controller
//             ),
//             Padding(
//               padding: EdgeInsets.all(20), //20 pixel ke semua arah
//               child: ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     _nama = textEditController.text; //akses text via controller
//                     pilihanSalamOut = pilihanSalam;
//                   }); //refresh
//                 },
//                 child: const Text('Klik Ini'),
//               ),
//             ),
//             Text(
//               _nama != "" ? 'Halo $_nama  selamat $pilihanSalamOut' : "",
//               style: const TextStyle(
//                   fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),
//             ), //hasil disini
//             TextButton(
//               style: TextButton.styleFrom(
//                 primary: Colors.green,
//                 textStyle: const TextStyle(fontSize: 20),
//               ),
//               onPressed: () {
//                 // aksi jika ditap
//               },
//               child: const Text('Ini TextButton'),
//             ),
//             IconButton(
//               icon: const Icon(Icons.account_box_outlined),
//               tooltip: 'Profil User',
//               onPressed: () {
// // kalau ditap
//               },
              
              
//             ),
            
            
            
//           ],
//         )), //column center
//       ), //Scaffold
//     ); //Material APP
//   }
// }

// // void main() {
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatefulWidget {
// //   const MyApp({Key? key}) : super(key: key);
// //   @override
// //   MyAppState createState() {
// //     return MyAppState();
// //   }
// // }

// // class MyAppState extends State<MyApp> {
// //   final textEditController = TextEditingController();
// //   String _nama = "";

// //   @override
// //   void dispose() {
// //     // Clean up the controller when the widget is disposed.
// //     textEditController.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Hello App',
// //       home: Scaffold(
// //         appBar: AppBar(
// //           title: const Text('Hello Hee'),
// //         ),
// //         body: Center(
// //           child: Image.network(
// //             "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
// //             fit: BoxFit.none,
// //             width: double.infinity,
// //             height: double.infinity,
// //           ),

// //           //   child: Column(
// //           // mainAxisSize: MainAxisSize.min,
// //           // children: [
// //           //   Image.network(
// //           //     'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
// //           //     height: 150,
// //           //   ),
// //           //   Image.asset(
// //           //     "images/heeseung.jpg", //pastikan file ada di assets/images
// //           //     height: 150,
// //           //   ),

// //           // Text('Masukan Nama :'),
// //           // TextField(
// //           //   controller: textEditController, //controller
// //           // ),
// //           // Padding(
// //           //   padding: EdgeInsets.all(20), //20 pixel ke semua arah
// //           //   child: ElevatedButton(
// //           //     onPressed: () {
// //           //       setState(() {
// //           //         _nama = textEditController.text; //akses text via controller
// //           //       }); //refresh
// //           //     },
// //           //     child: const Text('Klik Ini'),
// //           //   ),
// //           // ),
// //           // Text(
// //           //   'Halo $_nama',
// //           //   style: const TextStyle(
// //           //       fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),
// //           // ), //hasil disini
// //         ), //column center
// //       ), //Scaffold
// //     ); //Material APP
// //   }
// // }
