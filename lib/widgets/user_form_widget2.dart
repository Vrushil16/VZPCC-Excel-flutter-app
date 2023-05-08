import 'package:flutter/material.dart';
import 'package:vzpcc/model/user.dart';
import '../model/user2.dart';
import 'button_widget.dart';

class UserFormWidget2 extends StatefulWidget {
  final User2? user;
  final ValueChanged<User2> onSavedUser;

  const UserFormWidget2({
    Key? key2,
    this.user,
    required this.onSavedUser,
  }) : super(key: key2);
  @override
  State<UserFormWidget2> createState() => _UserFormWidgetState2();
}

class _UserFormWidgetState2 extends State<UserFormWidget2> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController controllerStudentId;
  late TextEditingController controllerStudentName;
  late TextEditingController countollerFathersName;
  late TextEditingController countollerSurname;
  late TextEditingController countollerFathersOccupation;
  late TextEditingController countollerMothersName;
  late TextEditingController countollerMothersOccupation;
  late TextEditingController countollerEmail;
  late TextEditingController countollerVillageCity;
  late TextEditingController countollerTaluka;
  late TextEditingController countollerDistrict;
  late TextEditingController countollerPin;
  late TextEditingController countollerPhoneNoSTD;
  late TextEditingController countollerMobileNo;
  late TextEditingController countollerFathersMobileNo;
  late TextEditingController countollerWhatsappNo;
  late TextEditingController countollerDOB;
  late TextEditingController countollerPlaceofBirth;
  late TextEditingController countollerNationality;
  late TextEditingController countollerAadharcardNo;
  late TextEditingController countollerSex;
  late TextEditingController countollerBloodGroup;
  late TextEditingController countollerHeight;
  late TextEditingController countollerWeight;
  late TextEditingController countollerCast;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initUser();
  }

  @override
  void didUpdateWidget(covariant UserFormWidget2 oldWidget) {
    super.didUpdateWidget(oldWidget);

    initUser();
  }

  void initUser() {
    final StudentId = widget.user == null ? '' : widget.user!.StudentId;
    final StudentName = widget.user == null ? '' : widget.user!.StudentName;
    final FathersName = widget.user == null ? '' : widget.user!.FathersName;
    final Surname = widget.user == null ? '' : widget.user!.Surname;
    final FathersOccupation =
        widget.user == null ? '' : widget.user!.FathersOccupation;
    final MothersName = widget.user == null ? '' : widget.user!.MothersName;
    final MothersOccupation =
        widget.user == null ? '' : widget.user!.MothersOccupation;
    final Email = widget.user == null ? '' : widget.user!.Email;
    final VillageCity = widget.user == null ? '' : widget.user!.VillageCity;
    final Taluka = widget.user == null ? '' : widget.user!.Taluka;
    final District = widget.user == null ? '' : widget.user!.District;
    final Pin = widget.user == null ? '' : widget.user!.Pin;
    final PhoneNoSTD = widget.user == null ? '' : widget.user!.PhoneNoSTD;
    final MobileNo = widget.user == null ? '' : widget.user!.MobileNo;
    final FathersMobileNo =
        widget.user == null ? '' : widget.user!.FathersMobileNo;
    final WhatsappNo = widget.user == null ? '' : widget.user!.WhatsappNo;
    final DOB = widget.user == null ? '' : widget.user!.DOB;
    final PlaceOfBirth = widget.user == null ? '' : widget.user!.PlaceofBirth;
    final Nationality = widget.user == null ? '' : widget.user!.Nationality;
    final AadharcardNo = widget.user == null ? '' : widget.user!.AadharcardNo;
    final Sex = widget.user == null ? '' : widget.user!.Sex;
    final BloodGroup = widget.user == null ? '' : widget.user!.BloodGroup;
    final Height = widget.user == null ? '' : widget.user!.Height;
    final Weight = widget.user == null ? '' : widget.user!.Weight;
    final Cast = widget.user == null ? '' : widget.user!.Cast;

    setState(() {
      controllerStudentId = TextEditingController(text: StudentId);
      controllerStudentName = TextEditingController(text: StudentName);
      countollerFathersName = TextEditingController(text: FathersName);
      countollerSurname = TextEditingController(text: Surname);
      countollerFathersOccupation =
          TextEditingController(text: FathersOccupation);
      countollerMothersName = TextEditingController(text: MothersName);
      countollerMothersOccupation =
          TextEditingController(text: MothersOccupation);
      countollerEmail = TextEditingController(text: Email);
      countollerVillageCity = TextEditingController(text: VillageCity);
      countollerTaluka = TextEditingController(text: Taluka);
      countollerDistrict = TextEditingController(text: District);
      countollerPin = TextEditingController(text: Pin);
      countollerPhoneNoSTD = TextEditingController(text: PhoneNoSTD);
      countollerMobileNo = TextEditingController(text: MobileNo);
      countollerFathersMobileNo = TextEditingController(text: FathersMobileNo);
      countollerWhatsappNo = TextEditingController(text: WhatsappNo);
      countollerDOB = TextEditingController(text: DOB);
      countollerPlaceofBirth = TextEditingController(text: PlaceOfBirth);
      countollerNationality = TextEditingController(text: Nationality);
      countollerAadharcardNo = TextEditingController(text: AadharcardNo);
      countollerSex = TextEditingController(text: Sex);
      countollerBloodGroup = TextEditingController(text: BloodGroup);
      countollerHeight = TextEditingController(text: Height);
      countollerWeight = TextEditingController(text: Weight);
      countollerCast = TextEditingController(text: Cast);
    });
  }

  @override
  Widget build(BuildContext context) => Form(
        key: formKey,
        child: Column(
          children: [
            buildStudentID(),
            const SizedBox(height: 10),
            buildStudentName(),
            const SizedBox(height: 10),
            buildFathersName(),
            const SizedBox(height: 10),
            buildSurname(),
            const SizedBox(height: 10),
            buildFathersOccupation(),
            const SizedBox(height: 10),
            buildMotheraName(),
            const SizedBox(height: 10),
            buildMothersOccupation(),
            const SizedBox(height: 10),
            buildEmail(),
            const SizedBox(height: 10),
            buildVillageCity(),
            const SizedBox(height: 10),
            buildTaluka(),
            const SizedBox(height: 10),
            buildDistrict(),
            const SizedBox(height: 10),
            buildPin(),
            const SizedBox(height: 10),
            buildPhoneNo(),
            const SizedBox(height: 10),
            buildMobileNo(),
            const SizedBox(height: 10),
            buildFathersMobileNo(),
            const SizedBox(height: 10),
            buildWhatsappNo(),
            const SizedBox(height: 10),
            buildDOB(),
            const SizedBox(height: 10),
            buildPlaceOfBirth(),
            const SizedBox(height: 10),
            buildNationality(),
            const SizedBox(height: 10),
            buildAadharcardNo(),
            const SizedBox(height: 10),
            buildSex(),
            const SizedBox(height: 10),
            buildBloodGroup(),
            const SizedBox(height: 10),
            buildHeight(),
            const SizedBox(height: 10),
            buildWeight(),
            const SizedBox(height: 10),
            buildCast(),
            const SizedBox(height: 10),
            buildSubmit(),
          ],
        ),
      );
  Widget buildStudentID() => TextFormField(
        controller: controllerStudentId,
        decoration: InputDecoration(
          labelText: 'Student ID',
          border: OutlineInputBorder(),
        ),
        maxLength: 10,
        validator: (value) =>
            value != null && value.isEmpty ? 'Enter StudentID' : null,
      );

  Widget buildStudentName() => TextFormField(
        controller: controllerStudentName,
        decoration: InputDecoration(
          labelText: 'Student Name',
          border: OutlineInputBorder(),
        ),
        maxLength: 15,
        validator: (value) =>
            value != null && value.isEmpty ? 'Enter Student Name' : null,
      );

  Widget buildFathersName() => TextFormField(
        controller: countollerFathersName,
        decoration: InputDecoration(
          labelText: 'Father\'s Name',
          border: OutlineInputBorder(),
        ),
        maxLength: 15,
        validator: (value) =>
            value != null && value.isEmpty ? 'Enter Father\'s Name' : null,
      );

  Widget buildSurname() => TextFormField(
        controller: countollerSurname,
        decoration: InputDecoration(
          labelText: 'Surname',
          border: OutlineInputBorder(),
        ),
        maxLength: 15,
        validator: (value) =>
            value != null && value.isEmpty ? 'Enter Surname' : null,
      );

  Widget buildFathersOccupation() => TextFormField(
        controller: countollerFathersOccupation,
        decoration: InputDecoration(
          labelText: 'Father\'s Occupation',
          border: OutlineInputBorder(),
        ),
        maxLength: 20,
        validator: (value) => value != null && value.isEmpty
            ? 'Enter Father\'s Occupation'
            : null,
      );

  Widget buildMotheraName() => TextFormField(
        controller: countollerMothersName,
        decoration: InputDecoration(
          labelText: 'Mother\'s Name',
          border: OutlineInputBorder(),
        ),
        maxLength: 15,
        validator: (value) =>
            value != null && value.isEmpty ? 'Enter Mother\'s Name' : null,
      );

  Widget buildMothersOccupation() => TextFormField(
        controller: countollerMothersOccupation,
        decoration: InputDecoration(
          labelText: 'Mother\'s Occupation',
          border: OutlineInputBorder(),
        ),
        maxLength: 20,
        validator: (value) => value != null && value.isEmpty
            ? 'Enter Mother\'s Occupation'
            : null,
      );

  Widget buildEmail() => TextFormField(
        controller: countollerEmail,
        decoration: InputDecoration(
          labelText: 'Email',
          border: OutlineInputBorder(),
        ),
        maxLength: 30,
        validator: (value) =>
            value != null && value.isEmpty ? ' Enter Email' : null,
      );

  Widget buildVillageCity() => TextFormField(
        controller: countollerVillageCity,
        decoration: InputDecoration(
          labelText: 'Village or City',
          border: OutlineInputBorder(),
        ),
        maxLength: 20,
        validator: (value) =>
            value != null && value.isEmpty ? ' Enter Village or City' : null,
      );

  Widget buildTaluka() => TextFormField(
        controller: countollerTaluka,
        decoration: InputDecoration(
          labelText: 'Taluka',
          border: OutlineInputBorder(),
        ),
        maxLength: 10,
        validator: (value) =>
            value != null && value.isEmpty ? ' Enter Taluka' : null,
      );

  Widget buildDistrict() => TextFormField(
        controller: countollerDistrict,
        decoration: InputDecoration(
          labelText: 'District',
          border: OutlineInputBorder(),
        ),
        maxLength: 10,
        validator: (value) =>
            value != null && value.isEmpty ? ' Enter District' : null,
      );

  Widget buildPin() => TextFormField(
        controller: countollerPin,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: 'Pin Code',
          border: OutlineInputBorder(),
        ),
        maxLength: 8,
        validator: (value) =>
            value != null && value.isEmpty ? ' Enter Pin Code' : null,
      );

  Widget buildPhoneNo() => TextFormField(
        controller: countollerPhoneNoSTD,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: 'Phone No (STD Code)',
          border: OutlineInputBorder(),
        ),
        maxLength: 10,
        validator: (value) => value != null && value.isEmpty
            ? ' Enter Phone No (STD Code)'
            : null,
      );

  Widget buildMobileNo() => TextFormField(
        controller: countollerMobileNo,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: 'Mobile No',
          border: OutlineInputBorder(),
        ),
        maxLength: 10,
        validator: (value) =>
            value != null && value.isEmpty ? 'Enter Mobile No' : null,
      );

  Widget buildFathersMobileNo() => TextFormField(
        controller: countollerFathersMobileNo,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: 'Father\'s Mobile No',
          border: OutlineInputBorder(),
        ),
        maxLength: 10,
        validator: (value) =>
            value != null && value.isEmpty ? 'Enter Father\'s Mobile No' : null,
      );

  Widget buildWhatsappNo() => TextFormField(
        controller: countollerWhatsappNo,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: 'What\'s App No',
          border: OutlineInputBorder(),
        ),
        maxLength: 10,
        validator: (value) =>
            value != null && value.isEmpty ? 'Enter What\'s App No' : null,
      );

  Widget buildDOB() => TextFormField(
        controller: countollerDOB,
        keyboardType: TextInputType.datetime,
        decoration: InputDecoration(
          labelText: 'Date of Birth',
          border: OutlineInputBorder(),
        ),
        maxLength: 20,
        validator: (value) =>
            value != null && value.isEmpty ? ' Enter Date of Birth' : null,
      );

  Widget buildPlaceOfBirth() => TextFormField(
        controller: countollerPlaceofBirth,
        decoration: InputDecoration(
          labelText: 'Place Of Birth',
          border: OutlineInputBorder(),
        ),
        maxLength: 20,
        validator: (value) =>
            value != null && value.isEmpty ? 'Enter Place Of Birth' : null,
      );

  Widget buildNationality() => TextFormField(
        controller: countollerNationality,
        decoration: InputDecoration(
          labelText: 'Nationality',
          border: OutlineInputBorder(),
        ),
        maxLength: 10,
        validator: (value) =>
            value != null && value.isEmpty ? 'Enter Nationality' : null,
      );

  Widget buildAadharcardNo() => TextFormField(
        controller: countollerAadharcardNo,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: 'Aadhar Card No',
          border: OutlineInputBorder(),
        ),
        maxLength: 12,
        validator: (value) =>
            value != null && value.isEmpty ? 'Enter Aadhar Card No' : null,
      );

  Widget buildSex() => TextFormField(
        controller: countollerSex,
        decoration: InputDecoration(
          labelText: 'Sex',
          border: OutlineInputBorder(),
        ),
        maxLength: 5,
        validator: (value) =>
            value != null && value.isEmpty ? 'Enter Sex' : null,
      );

  Widget buildBloodGroup() => TextFormField(
        controller: countollerBloodGroup,
        decoration: InputDecoration(
          labelText: 'Blood Group',
          border: OutlineInputBorder(),
        ),
        maxLength: 4,
        validator: (value) =>
            value != null && value.isEmpty ? 'Enter Blood Group' : null,
      );

  Widget buildHeight() => TextFormField(
        controller: countollerHeight,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: 'Height',
          border: OutlineInputBorder(),
        ),
        maxLength: 3,
        validator: (value) =>
            value != null && value.isEmpty ? 'Enter Height' : null,
      );

  Widget buildWeight() => TextFormField(
        controller: countollerWeight,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: 'Weight',
          border: OutlineInputBorder(),
        ),
        maxLength: 3,
        validator: (value) =>
            value != null && value.isEmpty ? 'Enter Weight' : null,
      );

  Widget buildCast() => TextFormField(
        controller: countollerCast,
        decoration: InputDecoration(
          labelText: 'Cast',
          border: OutlineInputBorder(),
        ),
        maxLength: 20,
        validator: (value) =>
            value != null && value.isEmpty ? 'Enter Cast' : null,
      );
  Widget buildSubmit() => ButtonWidget(
        text: 'Save',
        onClicked: () {
          FocusScope.of(context).unfocus();
          final form = formKey.currentState!;
          final isValid = form.validate();

          if (isValid) {
            formKey.currentState!.save();
            final message = 'Saved successfully';

            final snackBar = SnackBar(
              content: Text(
                message,
                style: TextStyle(fontSize: 20),
              ),
              backgroundColor: Colors.green,
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);

            final id = widget.user == null ? null : widget.user!.id;

            final user = User2(
              id: id,
              StudentId: controllerStudentId.text,
              StudentName: controllerStudentName.text,
              FathersName: countollerFathersName.text,
              Surname: countollerSurname.text,
              FathersOccupation: countollerFathersOccupation.text,
              MothersName: countollerMothersName.text,
              MothersOccupation: countollerMothersOccupation.text,
              Email: countollerEmail.text,
              VillageCity: countollerVillageCity.text,
              Taluka: countollerTaluka.text,
              District: countollerTaluka.text,
              Pin: countollerPin.text,
              PhoneNoSTD: countollerPhoneNoSTD.text,
              MobileNo: countollerMobileNo.text,
              FathersMobileNo: countollerFathersMobileNo.text,
              WhatsappNo: countollerWhatsappNo.text,
              DOB: countollerDOB.text,
              PlaceofBirth: countollerPlaceofBirth.text,
              Nationality: countollerNationality.text,
              AadharcardNo: countollerAadharcardNo.text,
              Sex: countollerSex.text,
              BloodGroup: countollerBloodGroup.text,
              Height: countollerHeight.text,
              Weight: countollerWeight.text,
              Cast: countollerCast.text,
            );
            widget.onSavedUser(user);
          }
        },
      );
}
