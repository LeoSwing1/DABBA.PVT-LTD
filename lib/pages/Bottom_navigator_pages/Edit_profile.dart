import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  File? _image;
  String? _name;
  String? _email;
  String? _address;
  String? _cardNumber;
  String? _expiryDate;
  String? _cvv;

  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: source);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  void _saveName(String name) {
    setState(() {
      _name = name;
    });
    Navigator.pop(context);
  }

  void _saveEmail(String email) {
    setState(() {
      _email = email;
    });
    Navigator.pop(context);
  }

  void _saveAddress(String address) {
    setState(() {
      _address = address;
    });
    Navigator.pop(context);
  }

  void _saveCardDetails(String cardNumber, String expiryDate, String cvv) {
    setState(() {
      _cardNumber = cardNumber;
      _expiryDate = expiryDate;
      _cvv = cvv;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
        backgroundColor: Color.fromARGB(255, 239, 103, 6),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Photo
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 80,
                    backgroundImage: _image != null ? FileImage(_image!) : null,
                  ),
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Select Image'),
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: <Widget>[
                                  GestureDetector(
                                    child: Text('Gallery'),
                                    onTap: () async {
                                      final picker = ImagePicker();
                                      final pickedImage =
                                          await picker.pickImage(
                                        source: ImageSource.gallery,
                                      );
                                      if (pickedImage != null) {
                                        setState(() {
                                          _image = File(pickedImage.path);
                                        });
                                      }
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  SizedBox(height: 16),
                                  GestureDetector(
                                    child: Text('Camera'),
                                    onTap: () async {
                                      final picker = ImagePicker();
                                      final pickedImage =
                                          await picker.pickImage(
                                        source: ImageSource.camera,
                                      );
                                      if (pickedImage != null) {
                                        setState(() {
                                          _image = File(pickedImage.path);
                                        });
                                      }
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            // Name
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Name'),
              subtitle: Text(_name ?? 'Leo Swing'),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    final nameController = TextEditingController(text: _name);
                    return AlertDialog(
                      title: Text('Edit Name'),
                      content: TextField(
                        controller: nameController,
                        decoration:
                            InputDecoration(hintText: 'Enter your name'),
                      ),
                      actions: <Widget>[
                        TextButton(
                          child: Text('Save'),
                          onPressed: () => _saveName(nameController.text),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            Divider(),
            // Email
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              subtitle: Text(_email ?? 'Tap to enter email'),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    final emailController = TextEditingController(text: _email);
                    return AlertDialog(
                      title: Text('Edit Email'),
                      content: TextField(
                        controller: emailController,
                        decoration:
                            InputDecoration(hintText: 'Enter your email'),
                      ),
                      actions: <Widget>[
                        TextButton(
                          child: Text('Save'),
                          onPressed: () => _saveEmail(emailController.text),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            Divider(),
            // Address
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Address'),
              subtitle: Text(_address ?? 'Tap to enter address'),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    final addressController =
                        TextEditingController(text: _address);
                    return AlertDialog(
                      title: Text('Edit Address'),
                      content: TextField(
                        controller: addressController,
                        decoration:
                            InputDecoration(hintText: 'Enter your address'),
                      ),
                      actions: <Widget>[
                        TextButton(
                          child: Text('Save'),
                          onPressed: () => _saveAddress(addressController.text),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            Divider(),
            // Cards
            ListTile(
              leading: Icon(Icons.credit_card),
              title: Text('Card Details'),
              subtitle: Text(_cardNumber != null
                  ? '**** **** **** $_cardNumber'
                  : 'Tap to enter card details'),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    final cardNumberController =
                        TextEditingController(text: _cardNumber);
                    final expiryDateController =
                        TextEditingController(text: _expiryDate);
                    final cvvController = TextEditingController(text: _cvv);
                    return AlertDialog(
                      title: Text('Edit Card Details'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextField(
                            controller: cardNumberController,
                            decoration:
                                InputDecoration(hintText: 'Card Number'),
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  controller: expiryDateController,
                                  decoration:
                                      InputDecoration(hintText: 'Expiry Date'),
                                ),
                              ),
                              SizedBox(width: 16),
                              Expanded(
                                child: TextField(
                                  controller: cvvController,
                                  decoration: InputDecoration(hintText: 'CVV'),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      actions: <Widget>[
                        ElevatedButton(
                          onPressed: () => _saveCardDetails(
                            cardNumberController.text,
                            expiryDateController.text,
                            cvvController.text,
                          ),
                          child: Text('Save'),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
