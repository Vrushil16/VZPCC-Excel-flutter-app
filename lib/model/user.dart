import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';

class UserFields {
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

  static List<String> getFields() => [
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

class User {
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

  const User({
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

  User copy({
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
      User(
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

  static User fromJson(Map<String, dynamic> json) => User(
        id: jsonDecode(json[UserFields.id]),
        StudentId: json[UserFields.StudentId],
        StudentName: json[UserFields.StudentName],
        FathersName: json[UserFields.FathersName],
        Surname: json[UserFields.Surname],
        FathersOccupation: json[UserFields.FathersOccupation],
        MothersName: json[UserFields.MothersName],
        MothersOccupation: json[UserFields.MothersOccupation],
        Email: json[UserFields.Email],
        VillageCity: json[UserFields.VillageCity],
        Taluka: json[UserFields.Taluka],
        District: json[UserFields.District],
        Pin: json[UserFields.Pin],
        PhoneNoSTD: json[UserFields.PhoneNoSTD],
        MobileNo: json[UserFields.MobileNo],
        FathersMobileNo: json[UserFields.FathersMobileNo],
        WhatsappNo: json[UserFields.WhatsappNo],
        DOB: json[UserFields.DOB],
        PlaceofBirth: json[UserFields.PlaceofBirth],
        Nationality: json[UserFields.Nationality],
        AadharcardNo: json[UserFields.AadharcardNo],
        Sex: json[UserFields.Sex],
        BloodGroup: json[UserFields.BloodGroup],
        Height: json[UserFields.Height],
        Weight: json[UserFields.Weight],
        Cast: json[UserFields.Cast],
      );

  Map<String, dynamic> toJson() => {
        UserFields.id: id,
        UserFields.StudentId: StudentId,
        UserFields.StudentName: StudentName,
        UserFields.FathersName: FathersName,
        UserFields.Surname: Surname,
        UserFields.FathersOccupation: FathersOccupation,
        UserFields.MothersName: MothersName,
        UserFields.MothersOccupation: MothersOccupation,
        UserFields.Email: Email,
        UserFields.VillageCity: VillageCity,
        UserFields.Taluka: Taluka,
        UserFields.District: District,
        UserFields.Pin: Pin,
        UserFields.PhoneNoSTD: PhoneNoSTD,
        UserFields.MobileNo: MobileNo,
        UserFields.FathersMobileNo: FathersMobileNo,
        UserFields.WhatsappNo: WhatsappNo,
        UserFields.DOB: DOB,
        UserFields.PlaceofBirth: PlaceofBirth,
        UserFields.Nationality: Nationality,
        UserFields.AadharcardNo: AadharcardNo,
        UserFields.Sex: Sex,
        UserFields.BloodGroup: BloodGroup,
        UserFields.Height: Height,
        UserFields.Weight: Weight,
        UserFields.Cast: Cast,
      };
}
