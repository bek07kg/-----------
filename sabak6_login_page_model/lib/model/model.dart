class Student {
  Student({
    required this.id,
    required this.name,
    required this.surName,
    required this.age,
    this.phone,
    required this.email,
    this.address,
    required this.group,
    this.gender,
    this.marriage,
  });

  final int id;
  final String name;
  final String surName;
  int age;
  String? phone;
  final String email;
  final String? address;
  int group;
  final String? gender;
  String? marriage;
}

final damir = Student(
  id: 1,
  name: "Damir",
  surName: "Askarov",
  age: 19,
  email: "damir@gamil.com",
  group: 1,
  phone: "+996772500500",
  gender: "erkek",
  address: "Bishkek",
);

final ilyaz = Student(
    id: 2,
    name: "Ilyaz",
    surName: "Martov",
    age: 18,
    email: "ilyaz@gamil.com",
    group: 1,
    gender: "erkek",
    phone: "+996500800800");

final aybiyke = Student(
  id: 3,
  name: "Aybiyke",
  surName: "Jakypova",
  age: 22,
  email: "aybiyke@gamil.com",
  group: 1,
  gender: "ayal",
  address: "Naryn",
  marriage: "Uy-buloolu",
);

final dina = Student(
  id: 4,
  name: "Dina",
  surName: "Erkinbaeva",
  age: 23,
  email: "dina@gamil.com",
  group: 2,
  gender: "ayal",
  phone: "+996708940940",
  address: "Osh",
);

final sanjar = Student(
  id: 5,
  name: "Sanjar",
  surName: "Seyitov",
  age: 20,
  email: "sanjar@gamil.com",
  group: 2,
  gender: "erkek",
  phone: "+996552002002",
  address: "Talas",
);

final madina = Student(
    id: 6,
    name: "Madina",
    surName: "Nurlanova",
    age: 18,
    email: "madina@gamil.com",
    group: 2,
    phone: "+996220360360");

final kutman = Student(
    id: 7,
    name: "Kutman",
    surName: "Yrysbaev",
    age: 23,
    email: "kutman@gamil.com",
    group: 3,
    gender: "erkek",
    address: "Karakol",
    phone: "+996773540540");

final bekish = Student(
  id: 8,
  name: "Bekish",
  surName: "Temirov",
  age: 26,
  email: "bekish@gamil.com",
  group: 3,
);

final aybek = Student(
  id: 9,
  name: "Aybek",
  surName: "Kozuev",
  age: 24,
  email: "aibek@gamil.com",
  group: 3,
);

final erkeayym = Student(
  id: 10,
  name: "Erkeyym",
  surName: "Asanova",
  age: 21,
  email: "erkeyym@gamil.com",
  group: 4,
);

final eliza = Student(
  id: 11,
  name: "Eliza",
  surName: "Jusupova",
  age: 20,
  email: "eliza@gamil.com",
  group: 4,
);

final ayperi = Student(
  id: 12,
  name: "Ayperi",
  surName: "Osmonova",
  age: 19,
  email: "ayperi@gamil.com",
  group: 4,
);

List studentter = <Student>[
  damir,
  ilyaz,
  aybiyke,
  dina,
  sanjar,
  madina,
  kutman,
  bekish,
  aybek,
  erkeayym,
  eliza,
  ayperi,
];
