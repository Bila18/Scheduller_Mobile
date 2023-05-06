import 'package:firebase_storage/firebase_storage.dart';

//List untuk menu delivery
List listUrlDlvr = [];
List listNameDlv = [];

// List untuk menu Periodical Service
List listUrlPs = [];
List listNamePs = [];

// List untuk menu Standart Warranty
List listUrlSw = [];
List listNameSw = [];

// List untuk menu SOP
List listUrlSop = [];
List listNameSop = [];

// List untuk menu Fc & Dc
List listUrlFc = [];
List listNameFc = [];

// List untuk menu WATAQ
List listUrlWtq = [];
List listNameWtq = [];

// List untuk menu EMILADO
List listUrlEmd = [];
List listNameEmd = [];

// List untuk menu E-Form
List listUrlEf = [];
List listNameEf = [];

// List untuk menu Main Tech
List listUrlMt = [];
List listNameMt = [];

// List untuk menu Info
List listUrlIf = [];
List listNameIf = [];

Future delivery() async {
  FirebaseStorage storage = FirebaseStorage.instance;
  final result = await storage.ref().child("/delivery").listAll();
  List<Reference> allFiles = result.items;
  listUrlDlvr.clear();
  listNameDlv.clear();
  for (int i = 0; i < allFiles.length; i++) {
    String url = await allFiles.elementAt(i).getDownloadURL();
    String nama = allFiles.elementAt(i).name;
    listUrlDlvr.add(url);
    listNameDlv.add(nama);
  }
}

Future periodical() async {
  FirebaseStorage storage = FirebaseStorage.instance;
  final result = await storage.ref().child("/periodical").listAll();
  List<Reference> allFiles = result.items;
  listUrlPs.clear();
  listNamePs.clear();
  for (int i = 0; i < allFiles.length; i++) {
    String url = await allFiles.elementAt(i).getDownloadURL();
    String nama = allFiles.elementAt(i).name;
    listUrlPs.add(url);
    listNamePs.add(nama);
  }
}

Future standard() async {
  FirebaseStorage storage = FirebaseStorage.instance;
  final result = await storage.ref().child("/standard").listAll();
  List<Reference> allFiles = result.items;
  listUrlSw.clear();
  listNameSw.clear();
  for (int i = 0; i < allFiles.length; i++) {
    String url = await allFiles.elementAt(i).getDownloadURL();
    String nama = allFiles.elementAt(i).name;
    listUrlSw.add(url);
    listNameSw.add(nama);
  }
}

Future sop() async {
  FirebaseStorage storage = FirebaseStorage.instance;
  final result = await storage.ref().child("/sop").listAll();
  List<Reference> allFiles = result.items;
  listUrlSop.clear();
  listNameSop.clear();
  for (int i = 0; i < allFiles.length; i++) {
    String url = await allFiles.elementAt(i).getDownloadURL();
    String nama = allFiles.elementAt(i).name;
    listUrlSop.add(url);
    listNameSop.add(nama);
  }
}

Future fcDc() async {
  FirebaseStorage storage = FirebaseStorage.instance;
  final result = await storage.ref().child("/fc-dc").listAll();
  List<Reference> allFiles = result.items;
  listUrlFc.clear();
  listNameFc.clear();
  for (int i = 0; i < allFiles.length; i++) {
    String url = await allFiles.elementAt(i).getDownloadURL();
    String nama = allFiles.elementAt(i).name;
    listUrlFc.add(url);
    listNameFc.add(nama);
  }
}

Future wataq() async {
  FirebaseStorage storage = FirebaseStorage.instance;
  final result = await storage.ref().child("/wataq").listAll();
  List<Reference> allFiles = result.items;
  listUrlWtq.clear();
  listNameWtq.clear();
  for (int i = 0; i < allFiles.length; i++) {
    String url = await allFiles.elementAt(i).getDownloadURL();
    String nama = allFiles.elementAt(i).name;
    listUrlWtq.add(url);
    listNameWtq.add(nama);
  }
}

Future emilado() async {
  FirebaseStorage storage = FirebaseStorage.instance;
  final result = await storage.ref().child("/emilado").listAll();
  List<Reference> allFiles = result.items;
  listUrlEmd.clear();
  listNameEmd.clear();
  for (int i = 0; i < allFiles.length; i++) {
    String url = await allFiles.elementAt(i).getDownloadURL();
    String nama = allFiles.elementAt(i).name;
    listUrlEmd.add(url);
    listNameEmd.add(nama);
  }
}

Future eForm() async {
  FirebaseStorage storage = FirebaseStorage.instance;
  final result = await storage.ref().child("/eForm").listAll();
  List<Reference> allFiles = result.items;
  listUrlEf.clear();
  listNameEf.clear();
  for (int i = 0; i < allFiles.length; i++) {
    String url = await allFiles.elementAt(i).getDownloadURL();
    String nama = allFiles.elementAt(i).name;
    listUrlEf.add(url);
    listNameEf.add(nama);
  }
}

Future mainTech() async {
  FirebaseStorage storage = FirebaseStorage.instance;
  final result = await storage.ref().child("/main-tech").listAll();
  List<Reference> allFiles = result.items;
  listUrlMt.clear();
  listNameMt.clear();
  for (int i = 0; i < allFiles.length; i++) {
    String url = await allFiles.elementAt(i).getDownloadURL();
    String nama = allFiles.elementAt(i).name;
    listUrlMt.add(url);
    listNameMt.add(nama);
  }
}

Future info() async {
  FirebaseStorage storage = FirebaseStorage.instance;
  final result = await storage.ref().child("/info").listAll();
  List<Reference> allFiles = result.items;
  listUrlIf.clear();
  listNameIf.clear();
  for (int i = 0; i < allFiles.length; i++) {
    String url = await allFiles.elementAt(i).getDownloadURL();
    String nama = allFiles.elementAt(i).name;
    listUrlIf.add(url);
    listNameIf.add(nama);
  }
}
