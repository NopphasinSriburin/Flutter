import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Student List'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // สร้างข้อมูลนักเรียนไม่ซ้ำ
  List<Student> data = [
    Student(
        name: "นายเมธากร สิงห์คาน",
        id: "653450100-9",
        image: 'assets/images/Metagorn Singkhan.jpg'),
    Student(
        name: "	นางสาวณัฐณิชา พรมปิก",
        id: "653450284-3",
        image: 'assets/images/Natnicha Prompik.JPG'),
    Student(
        name: "นายภานุวัฒน์ ธรรมบุตร",
        id: "	653450099-8",
        image: 'assets/images/Panuwat Thammabut.jpg'),
    Student(
        name: "นางสาวรามิล ไกยบุตร",
        id: "653450297-4",
        image: 'assets/images/ramin kaiyabut.jpg'),
    Student(
        name: "	นายธนาโชค สุวรรณ์",
        id: "	653450287-7",
        image: 'assets/images/Thanachok suwan.jpeg'),
    Student(
        name: "นายวรชิต ทองเลิศ",
        id: "	653450298-2",
        image: 'assets/images/worachit thonglert.jpg'),
    Student(
        name: "กฤตชวกร ชวลิตกิตติวงศ์",
        id: "	653450279-6",
        image: 'assets/images/กฤตชวกร ชวลิตกิตติวงศ์.png'),
    Student(
        name: "จันทิมา พรมวัง",
        id: "	653450280-1",
        image: 'assets/images/จันทิมา พรมวัง .jpg'),
    Student(
        name: "ชฎาพร พินิจสัย",
        id: "653450281-9",
        image: 'assets/images/ชฎาพร พินิจสัย.jpg'),
    Student(
        name: "ชวกร เนืองภา",
        id: "653450087-5",
        image: 'assets/images/ชวกร เนืองภา.jpg'),
    Student(
        name: "ถิรวัฒน์ โชติธนกิจไพศาล",
        id: "653450090-6",
        image: 'assets/images/ถิรวัฒน์ โชติธนกิจไพศาล.jpg'),
    Student(
        name: "ธนกร สว่างสูงเนิน",
        id: "653450285-1",
        image: 'assets/images/ธนกร สว่างสูงเนิน.jpg'),
    Student(
        name: "ธนาพร ชนิดกุล",
        id: "653450092-2",
        image: 'assets/images/ธนาพร ชนิดกุล.jpg'),
    Student(
        name: "นภสินธุ์ ศรีบุริทร์",
        id: "643450290-8",
        image: 'assets/images/นภสินธุ์ ศรีบุริทร์.jpg'),
    Student(
        name: "นันทวัฒน์ แซ่ฮวม",
        id: "653450510-0",
        image: 'assets/images/นันทวัฒน์ แซ่ฮวม.jpg'),
    Student(
        name: "นันทิพัฒน์ บุตรวัง",
        id: "653450094-8",
        image: 'assets/images/นันทิพัฒน์ บุตรวัง.jpg'),
    Student(
        name: "เนติธร ศรีมี",
        id: "653450292-4",
        image: 'assets/images/เนติธร ศรีมี.jpg'),
    Student(
        name: "ปฏิพัทธ์ มาตรา",
        id: "653450293-2",
        image: 'assets/images/ปฏิพัทธ์ มาตรา.jpg'),
    Student(
        name: "ประจักษ์ ศรีทอง",
        id: "653450294-0",
        image: 'assets/images/ประจักษ์ ศรีทอง.jpg'),
    Student(
        name: "พิชัย ทองอาสา",
        id: "653450096-4",
        image: 'assets/images/พิชัย ทองอาสา.jpg'),
    Student(
        name: "พิริยกร พันธุ์พานิชย์",
        id: "653450098-0",
        image: 'assets/images/พิริยกร พันธุ์พานิชย์.jpg'),
    Student(
        name: "วงศธร ทองอินทร์",
        id: "653450101-7",
        image: 'assets/images/วงศธร ทองอินทร์.jpeg'),
    Student(
        name: "วรโชติ ทองเลิศ",
        id: "653450299-0",
        image: 'assets/images/วรโชติ ทองเลิศ.jpg'),
    Student(
        name: "อนิวัตติ์ ณ หนองคาย",
        id: "653450106-7",
        image: 'assets/images/อนิวัตติ์ ณ หนองคาย.jpg'),
    Student(
        name: "อรปรียา จันทะโคตร",
        id: "653450107-5",
        image: 'assets/images/อรปรียา จันทะโคตร.jpg'),
    Student(
        name: "อัครวิชญ์ พบวงษา",
        id: "653450108-3",
        image: 'assets/images/อัครวิชญ์ พบวงษา.jpg'),
    Student(
        name: "ฮารูณ ซิดดิ๊ก คูเรซิ",
        id: "653450300-1",
        image: 'assets/images/ฮารูณ ซิดดิ๊ก คูเรซิ.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My CIS"),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: ListView(
        children: data.map((student) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StudentDetailPage(student: student),
                ),
              );
            },
            child: studentListItem(
              name: student.name,
              id: student.id,
              image: student.image,
            ),
          );
        }).toList(),
      ),
    );
  }

  ListTile studentListItem({
    required String name,
    required String id,
    required String image,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.all(8.0),
      leading: Hero(
        tag: id,
        child: ClipOval(
          child: Image.asset(
            image,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Text(name,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      subtitle: Text(id, style: TextStyle(fontSize: 14, color: Colors.grey)),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => StudentDetailPage(
                student: Student(name: name, id: id, image: image)),
          ),
        );
      },
    );
  }
}

class Student {
  final String name;
  final String id;
  final String image;

  Student({
    required this.name,
    required this.id,
    required this.image,
  });
}

class StudentDetailPage extends StatelessWidget {
  final Student student;

  const StudentDetailPage({required this.student});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(student.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: student.id,
              child: ClipOval(
                child: Image.asset(
                  student.image,
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              student.name,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 8),
            Text(
              student.id,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
