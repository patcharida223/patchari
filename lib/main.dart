import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:onlinedb_mormor/addproduct.dart';
import 'package:onlinedb_mormor/showproduct.dart';
import 'addproduct.dart';
import 'showproductgrid.dart';
import 'showproducttype.dart';

//Method หลักทีRun
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDMAuMHIjuz6S7xASYdSAQ9zs2Z3B1v8AE",
            authDomain: "fir-2ca9b.firebaseapp.com",
            databaseURL: "https://fir-2ca9b-default-rtdb.firebaseio.com",
            projectId: "fir-2ca9b",
            storageBucket: "fir-2ca9b.firebasestorage.app",
            messagingSenderId: "714529129636",
            appId: "1:714529129636:web:73d12b05be5587df3c9231",
            measurementId: "G-QN0RG75M7Q"));
  } else {
    await Firebase.initializeApp();
  }

  runApp(MyApp());
}

//Class stateless สั่งแสดงผลหนาจอ
class MyApp extends StatelessWidget {
  const MyApp({super.key});
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home: Main(),
    );
  }
}

//Class stateful เรียกใช้การทํางานแบบโต้ตอบ
class Main extends StatefulWidget {
  @override
  State<Main> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Main> {
//ส่วนเขียน Code ภาษา dart เพื่อรับค่าจากหน้าจอมาคํานวณหรือมาทําบางอย่างและส่งค่ากลับไป
//ส่วนการออกแบบหน้าจอ
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
          title: Text('MAIN'),
          backgroundColor: const Color.fromARGB(255, 33, 127, 58),
          foregroundColor: const Color.fromARGB(255, 255, 250, 250)),
   body: SingleChildScrollView(
        child: Container(
          // เพิ่มพื้นหลังเต็มหน้าจอ
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg1.jpg'), // ใส่ชื่อไฟล์ภาพพื้นหลัง
                fit: BoxFit.cover,
            ),
          ),
          height: MediaQuery.of(context).size.height, // ให้พื้นหลังเต็มหน้าจอ
//ส่วนการออกแบบหน้าจอ
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              addproduct(), //ชื่อหน้าจอที่ต้องการเปิด
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      backgroundColor: const Color.fromARGB(255, 33, 127, 58),
                      textStyle: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.normal),
                      foregroundColor: Colors.white,
                      fixedSize: Size(200, 50), // ปรับขนาดปุ่ม
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30), // มุมโค้งมน
                      ),
                    ),
                    child: Text('บันทึกสินค้า'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              showproductgrid(), //ชื่อหน้าจอที่ต้องการเปิด
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      backgroundColor: const Color.fromARGB(255, 33, 127, 58),
                      textStyle: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.normal),
                      foregroundColor: Colors.white,
                      fixedSize: Size(200, 50), // ปรับขนาดปุ่ม
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30), // มุมโค้งมน
                      ), // ขนาดและน้ำหนักตัวอักษร
                    ),
                    child: Text('แสดงข้อมูลสินค้า'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              showproducttype(), //ชื่อหน้าจอที่ต้องการเปิด
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      backgroundColor: const Color.fromARGB(255, 33, 127, 58),
                      textStyle: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.normal),
                      foregroundColor: Colors.white,
                      fixedSize: Size(200, 50), // ปรับขนาดปุ่ม
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30), // มุมโค้งมน
                      ),
                    ),
                    child: Text('ประเภทสินค้า'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
