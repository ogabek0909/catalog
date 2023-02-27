import 'package:catalog/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const routeName = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 30, top: 20),
                    child: Text(
                      'Kirish',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.blue,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  TextFieldForm(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Elektron pochta kiriting!';
                      }
                      return null;
                    },
                    controller: emailController,
                    hintText: 'Email',
                    perfixIcon: const Icon(Icons.email, color: Colors.blue),
                  ),
                  TextFieldForm(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Parol kiriting!';
                      }
                      return null;
                    },
                    controller: passwordController,
                    hintText: 'Parol',
                    perfixIcon: const Icon(Icons.lock, color: Colors.blue),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: 150,
                    height: 45,
                    child: FilledButton(
                      onPressed: () {
                        context.goNamed('/register');
                      },
                      child: const Text('Ro\'yxatdan o\'tish'),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
                      child: const Text('Kirish'),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            MediaQuery.of(context).size.width > 900
                ? Expanded(
                    child: Container(
                      color: Colors.blue,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                              'https://telegra.ph/file/276e293154d27c194cc8c.png'),
                          const Text(
                            'Xush kelibsiz!',
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Text(
                            'Samarqandga!',
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
