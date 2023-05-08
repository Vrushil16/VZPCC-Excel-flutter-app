import 'dart:convert';

import 'package:flutter/material.dart';

class UserFields2 {
  static final String id = 'id';
  static final String StudentId = "StudentId";
  static final String StudentName = "StudentName";
  static final String FathersName = "FathersName";
  static final String Surname = "Surname";
  static final String FathersOccupation = "FathersOccupation";
  static final String MothersName = "MothersName";
  static final String MothersOccupation = "MothersOccupation";
  static final String Email = "Email";
  static final String VillageCity = "VillageCity";
  static final String Taluka = "Taluka";
  static final String District = "District";
  static final String Pin = "Pin";
  static final String PhoneNoSTD = "PhoneNoSTD";
  static final String MobileNo = "MobileNo";
  static final String FathersMobileNo = "FathersMobileNo";
  static final String WhatsappNo = "WhatsappNo";
  static final String DOB = "DOB";
  static final String PlaceofBirth = "PlaceofBirth";
  static final String Nationality = "Nationality";
  static final String AadharcardNo = "AadharcardNo";
  static final String Sex = "Sex";
  static final String BloodGroup = "BloodGroup";
  static final String Height = "Height";
  static final String Weight = "Weight";
  static final String Cast = "Cast";

  static List<String> getFields2() => [
        id,
        StudentId,
        StudentName,
        FathersName,
        Surname,
        FathersOccupation,
        MothersName,
        MothersOccupation,
        Email,
        VillageCity,
        Taluka,
        District,
        Pin,
        PhoneNoSTD,
        MobileNo,
        FathersMobileNo,
        WhatsappNo,
        DOB,
        PlaceofBirth,
        Nationality,
        AadharcardNo,
        Sex,
        BloodGroup,
        Height,
        Weight,
        Cast
      ];
}

class User2 {
  final int? id;
  final String StudentId;
  final String StudentName;
  final String FathersName;
  final String Surname;
  final String FathersOccupation;
  final String MothersName;
  final String MothersOccupation;
  final String Email;
  final String VillageCity;
  final String Taluka;
  final String District;
  final String Pin;
  final String PhoneNoSTD;
  final String MobileNo;
  final String FathersMobileNo;
  final String WhatsappNo;
  final String DOB;
  final String PlaceofBirth;
  final String Nationality;
  final String AadharcardNo;
  final String Sex;
  final String BloodGroup;
  final String Height;
  final String Weight;
  final String Cast;

  const User2({
    this.id,
    required this.StudentId,
    required this.StudentName,
    required this.FathersName,
    required this.Surname,
    required this.FathersOccupation,
    required this.MothersName,
    required this.MothersOccupation,
    required this.Email,
    required this.VillageCity,
    required this.Taluka,
    required this.District,
    required this.Pin,
    required this.PhoneNoSTD,
    required this.MobileNo,
    required this.FathersMobileNo,
    required this.WhatsappNo,
    required this.DOB,
    required this.PlaceofBirth,
    required this.Nationality,
    required this.AadharcardNo,
    required this.Sex,
    required this.BloodGroup,
    required this.Height,
    required this.Weight,
    required this.Cast,
  });

  User2 copy({
    int? id,
    String? StudentId,
    String? StudentName,
    String? FathersName,
    String? Surname,
    String? FathersOccupation,
    String? MothersName,
    String? MothersOccupation,
    String? Email,
    String? VillageCity,
    String? Taluka,
    String? District,
    String? Pin,
    String? PhoneNoSTD,
    String? MobileNo,
    String? FathersMobileNo,
    String? WhatsappNo,
    String? DOB,
    String? PlaceofBirth,
    String? Nationality,
    String? AadharcardNo,
    String? Sex,
    String? BloodGroup,
    String? Height,
    String? Weight,
    String? Cast,
  }) =>
      User2(
        id: id ?? this.id,
        StudentId: StudentId ?? this.StudentId,
        StudentName: StudentName ?? this.StudentName,
        FathersName: FathersName ?? this.FathersName,
        Surname: Surname ?? this.Surname,
        FathersOccupation: FathersOccupation ?? this.FathersOccupation,
        MothersName: MothersName ?? this.MothersName,
        MothersOccupation: MothersOccupation ?? this.MothersOccupation,
        Email: Email ?? this.Email,
        VillageCity: VillageCity ?? this.VillageCity,
        Taluka: Taluka ?? this.Taluka,
        District: District ?? this.District,
        Pin: Pin ?? this.Pin,
        PhoneNoSTD: PhoneNoSTD ?? this.PhoneNoSTD,
        MobileNo: MobileNo ?? this.MobileNo,
        FathersMobileNo: FathersMobileNo ?? this.FathersMobileNo,
        WhatsappNo: WhatsappNo ?? this.WhatsappNo,
        DOB: DOB ?? this.DOB,
        PlaceofBirth: PlaceofBirth ?? this.PlaceofBirth,
        Nationality: Nationality ?? this.Nationality,
        AadharcardNo: AadharcardNo ?? this.AadharcardNo,
        Sex: Sex ?? this.Sex,
        BloodGroup: BloodGroup ?? this.BloodGroup,
        Height: Height ?? this.Height,
        Weight: Weight ?? this.Weight,
        Cast: Cast ?? this.Cast,
      );

  static User2 fromJson(Map<String, dynamic> json) => User2(
        id: jsonDecode(json[UserFields2.id]),
        StudentId: json[UserFields2.StudentId],
        StudentName: json[UserFields2.StudentName],
        FathersName: json[UserFields2.FathersName],
        Surname: json[UserFields2.Surname],
        FathersOccupation: json[UserFields2.FathersOccupation],
        MothersName: json[UserFields2.MothersName],
        MothersOccupation: json[UserFields2.MothersOccupation],
        Email: json[UserFields2.Email],
        VillageCity: json[UserFields2.VillageCity],
        Taluka: json[UserFields2.Taluka],
        District: json[UserFields2.District],
        Pin: json[UserFields2.Pin],
        PhoneNoSTD: json[UserFields2.PhoneNoSTD],
        MobileNo: json[UserFields2.MobileNo],
        FathersMobileNo: json[UserFields2.FathersMobileNo],
        WhatsappNo: json[UserFields2.WhatsappNo],
        DOB: json[UserFields2.DOB],
        PlaceofBirth: json[UserFields2.PlaceofBirth],
        Nationality: json[UserFields2.Nationality],
        AadharcardNo: json[UserFields2.AadharcardNo],
        Sex: json[UserFields2.Sex],
        BloodGroup: json[UserFields2.BloodGroup],
        Height: json[UserFields2.Height],
        Weight: json[UserFields2.Weight],
        Cast: json[UserFields2.Cast],
      );

  Map<String, dynamic> toJson() => {
        UserFields2.id: id,
        UserFields2.StudentId: StudentId,
        UserFields2.StudentName: StudentName,
        UserFields2.FathersName: FathersName,
        UserFields2.Surname: Surname,
        UserFields2.FathersOccupation: FathersOccupation,
        UserFields2.MothersName: MothersName,
        UserFields2.MothersOccupation: MothersOccupation,
        UserFields2.Email: Email,
        UserFields2.VillageCity: VillageCity,
        UserFields2.Taluka: Taluka,
        UserFields2.District: District,
        UserFields2.Pin: Pin,
        UserFields2.PhoneNoSTD: PhoneNoSTD,
        UserFields2.MobileNo: MobileNo,
        UserFields2.FathersMobileNo: FathersMobileNo,
        UserFields2.WhatsappNo: WhatsappNo,
        UserFields2.DOB: DOB,
        UserFields2.PlaceofBirth: PlaceofBirth,
        UserFields2.Nationality: Nationality,
        UserFields2.AadharcardNo: AadharcardNo,
        UserFields2.Sex: Sex,
        UserFields2.BloodGroup: BloodGroup,
        UserFields2.Height: Height,
        UserFields2.Weight: Weight,
        UserFields2.Cast: Cast,
      };
}
