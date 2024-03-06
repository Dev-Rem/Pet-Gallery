import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController _petNameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  TextEditingController _genderController = TextEditingController();
  TextEditingController _animalController = TextEditingController();
  TextEditingController _breedController = TextEditingController();
  TextEditingController _homeAddressController = TextEditingController();
  TextEditingController _bioController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  String _petName = '';
  int _age = 0;
  String _gender = '';
  String _animal = '';
  String _breed = '';
  String _homeAddress = '';
  String _bio = '';
  String _password = '';
  String _confirmPassword = '';

  @override
  void dispose() {
    _petNameController.dispose();
    _ageController.dispose();
    _genderController.dispose();
    _animalController.dispose();
    _breedController.dispose();
    _homeAddressController.dispose();
    _bioController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        TextField(
          controller: _petNameController,
          decoration:
              InputDecoration(labelText: "Name", border: OutlineInputBorder()),
          onChanged: (value) {
            setState(() {
              _petName = value;
            });
          },
        ),
        TextField(
          controller: _ageController,
          decoration:
              InputDecoration(labelText: "Age", border: OutlineInputBorder() ),
          onChanged: (value) {
            setState(() {
              _age = value as int;
            });
          },
        ),
        TextField(
          controller: _genderController,
          decoration: InputDecoration(
              labelText: "Gender", border: OutlineInputBorder()),
          onChanged: (value) {
            setState(() {
              _gender = value;
            });
          },
        ),
        TextField(
          controller: _animalController,
          decoration: InputDecoration(
              labelText: "Animal", border: OutlineInputBorder()),
          onChanged: (value) {
            setState(() {
              _animal = value;
            });
          },
        ),
        TextField(
          controller: _breedController,
          decoration:
              InputDecoration(labelText: "Breed", border: OutlineInputBorder()),
          onChanged: (value) {
            setState(() {
              _breed = value;
            });
          },
        ),
        TextField(
          controller: _homeAddressController,
          decoration: InputDecoration(
              labelText: "Home address", border: OutlineInputBorder()),
          onChanged: (value) {
            setState(() {
              _homeAddress = value;
            });
          },
        ),
        TextField(
          controller: _bioController,
          decoration: InputDecoration(
            labelText: "Bio",
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            setState(() {
              _bio = value;
            });
          },
        ),
        TextField(
          controller: _passwordController,
          decoration: InputDecoration(
              labelText: "Password", border: OutlineInputBorder()),
          onChanged: (value) {
            setState(() {
              _password = value;
            });
          },
        ),
        TextField(
          controller: _confirmPasswordController,
          decoration: InputDecoration(
              labelText: "Confirm password", border: OutlineInputBorder()),
          onChanged: (value) {
            setState(() {
              _confirmPassword = value;
            });
          },
        ),
      ],
    )));
  }
}
