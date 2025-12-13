import 'package:flutter/material.dart';
//scafflod  โครงสร้างของหน้าui
//Padding ใช้เพื่อ เพิ่มพื้นที่ว่างรอบ ๆ widget
//SafeArea คือ widget ที่ทำให้เนื้อหาภายในไม่ถูกบัง
void main() {
  runApp(const MyApp());  //เปิดใช้งานflutter
}

class MyApp extends StatelessWidget {       //widget
  const MyApp({super.key});                // เป็นการใช้คีย์ key ในการสร้าง widget

  @override                                 //ใช้เมื่อ เขียนทับ method หรือ property
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/second': (context) => const SecondPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});     //ส่งค่าkey

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container( width: double.infinity,
              padding: EdgeInsets.only(top: 20, bottom: 20,),
              decoration: BoxDecoration(color: Colors.red[200]),
              child: Column(
                children: [
                  Text(
                    "ข้อมูลส่วนตัว",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),

                    child: ClipOval(
                      child: Image.network(
                        "data:image/png;base64,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",
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Yodsakorn Vansiriluck"),
                  SizedBox(height: 5),
                  Text("Yodsakorn.Vansiriluck@e-tech.ac.th"),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ข้อมูลส่วนตัว"),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.green[100],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(Icons.phone, color: Colors.green),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("เบอร์โทรศัพท์"), Text("087-545-1236")],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(Icons.cake, color: Colors.redAccent),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("วันเกิด"), Text("22 ตุลาคม 2548")],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.pinkAccent[100],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(Icons.local_activity, color: Colors.yellow),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("ที่อยู่่"), Text("223/8 ชลบุรี")],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.pink[100],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(Icons.school, color: Colors.blue),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text("การศึกษา"),
                          Text("วิทยาลัยเทคโนโลยีภาคตะวันออก (อี.เทค)"),
                        ],
                      ),
                    ],
                  ),

                  Container(
                      child:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () => Navigator.pushNamed(context, '/second'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              fixedSize: Size(300, 20),
                            ),
                            child: Text(
                              'Go To Second',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      )
                  )
          ],
        ),
      ),
        ],
      ),
    ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(4),
                        child: ClipOval(
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoz4equ265Ys7oyArnMYZL-YYMLSxWMH_s1cjKq6gXgb22yasYTotc-v862Z5bIrWI_mg&usqp=CAU",
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "56",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "กำลังติดตาม",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 1,
                          horizontal: 10,
                        ),
                        decoration: BoxDecoration(
                          border: Border.symmetric(
                            vertical: BorderSide(
                              color: Colors.grey.shade400,
                              width: 2,
                            ),
                          ),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "56",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "ผู้ติดตาม",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "56",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "ถูกใจและบันทึก",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "yodsakorn vansiriluck ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.verified, color: Colors.blue),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.tiktok,
                          color: Colors.grey.shade500,
                          size: 13,
                        ),
                        Text(
                          " yodsakorn ",
                          style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.grey.shade500,
                          size: 13,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),

                  Container(
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () => Navigator.pushNamed(context, '#'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            fixedSize: Size(300, 20),
                          ),
                          child: Text(
                            'ติดตาม',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SizedBox(width: 20),
                        Icon(Icons.share, color: Colors.black),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                      child:
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(4),
                                child: Image.network(
                                  "https://mpics-cdn.mgronline.com/pics/Images/559000000223001.JPEG",
                                  width: 180,
                                  height: 180,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(4),
                                child: Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1gmv5-pF503kY6uLoj9DlDpFwgJCaPTZFYtkLhFl-akyqX4TYD_nYbwHqXZkt3bQoo70&usqp=CAU",
                                  width: 180,
                                  height: 180,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                  ),
                  SizedBox(height: 340),
                  Container(
                      child:
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () => Navigator.pushNamed(context, '/'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              fixedSize: Size(300, 20),
                            ),
                            child: Text(
                              'ไปยังหน้าแรก',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      )
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}