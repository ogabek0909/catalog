// ignore_for_file: prefer_const_constructors

import 'package:catalog/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  static const routeName = 'register-screen';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController familyNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController siteController = TextEditingController();
  TextEditingController telegramController = TextEditingController();
  TextEditingController instagramController = TextEditingController();
  TextEditingController facebookController = TextEditingController();
  TextEditingController youtubeController = TextEditingController();
  TextEditingController whatsappController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: Row(
          children: [
            Expanded(
              child: FittedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 30, top: 20),
                      child: Text(
                        'Profil yaratish',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.blue,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextFieldForm(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Ism kiriting!';
                                }
                                return null;
                              },
                              controller: usernameController,
                              hintText: 'Ism*',
                              perfixIcon:
                                  Icon(Icons.person, color: Colors.blue),
                            ),
                            TextFieldForm(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Familiya kiriting!';
                                }
                                return null;
                              },
                              controller: surnameController,
                              hintText: 'Familiya*',
                              perfixIcon:
                                  Icon(Icons.person, color: Colors.blue),
                            ),
                            TextFieldForm(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Sharifingizni kiriting!';
                                }
                                return null;
                              },
                              controller: familyNameController,
                              hintText: 'Otasining ismi*',
                              perfixIcon:
                                  Icon(Icons.person, color: Colors.blue),
                            ),
                            TextFieldForm(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Telefon raqam kiriting!';
                                }
                                return null;
                              },
                              controller: phoneController,
                              hintText: 'Telefon raqam*',
                              perfixIcon:
                                  Icon(Icons.local_phone, color: Colors.blue),
                            ),
                            TextFieldForm(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Elektron pochta kiriting!';
                                }
                                return null;
                              },
                              controller: emailController,
                              hintText: 'Elektron pochta*',
                              perfixIcon: Icon(Icons.email, color: Colors.blue),
                            ),
                            TextFieldForm(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Parol kiriting!';
                                }
                                return null;
                              },
                              controller: passwordController,
                              hintText: 'Parol*',
                              perfixIcon: Icon(Icons.lock, color: Colors.blue),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextFieldForm(
                              controller: siteController,
                              hintText: 'example.uz',
                              perfixIcon:
                                  Icon(Icons.language, color: Colors.blue),
                            ),
                            TextFieldForm(
                              controller: telegramController,
                              hintText: 't.example_uz',
                              perfixIcon:
                                  Icon(Icons.telegram, color: Colors.blue),
                            ),
                            TextFieldForm(
                              controller: instagramController,
                              hintText: 'instagram.com',
                              perfixIcon: Icon(
                                FontAwesomeIcons.instagram,
                                color: Colors.blue,
                              ),
                            ),
                            TextFieldForm(
                              controller: facebookController,
                              hintText: 'facebook.com',
                              perfixIcon: Icon(
                                FontAwesomeIcons.facebook,
                                color: Colors.blue,
                              ),
                            ),
                            TextFieldForm(
                              controller: youtubeController,
                              hintText: 'youtube.com',
                              perfixIcon: Icon(
                                FontAwesomeIcons.youtube,
                                color: Colors.blue,
                              ),
                            ),
                            TextFieldForm(
                              controller: whatsappController,
                              hintText: 'wa.me',
                              perfixIcon: Icon(
                                FontAwesomeIcons.whatsapp,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: 150,
                      height: 45,
                      child: FilledButton(
                        onPressed: () {
                          if (!_formKey.currentState!.validate()) {
                            return;
                          }
                        },
                        child: Text('Ro\'yxatdan o\'tish'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            if (MediaQuery.of(context).size.width > 900)
              const Expanded(child: LoginLogoWidget()),
          ],
        ),
      ),
    );
  }
}

class LoginLogoWidget extends StatelessWidget {
  const LoginLogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9WCSksMD_tiMuaUoUz51BrApdhoCGYQhtyO6dIJ_xQjC6-hCGOkpCzwb7aXQKLS8OzBg&usqp=CAU',
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Xush kelibsiz!',
            style: TextStyle(
              fontSize: 35,
              color: Colors.white,
              fontWeight: FontWeight.w600,
              letterSpacing: 2,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Samarqandga!',
            style: TextStyle(
              fontSize: 35,
              color: Colors.white,
              fontWeight: FontWeight.w600,
              letterSpacing: 2,
            ),
          ),
        ],
      ),
    );
  }
}
