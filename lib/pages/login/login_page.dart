import 'dart:convert';

import 'package:animate_do/animate_do.dart';
import 'package:crypto/crypto.dart';
import 'package:example_gallery_app/blocs/auth_bloc.dart';
import 'package:example_gallery_app/blocs/auth_event.dart';
import 'package:example_gallery_app/blocs/auth_state.dart';
import 'package:example_gallery_app/core/di/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../gallery/gallery_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  var loginGlobalKey = GlobalKey<LoginFormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: <Widget>[
                  FadeInUp(
                    duration: const Duration(milliseconds: 1800),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color.fromRGBO(143, 148, 251, 1),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(143, 148, 251, .2),
                            blurRadius: 20.0,
                            offset: Offset(0, 10),
                          )
                        ],
                      ),
                      child: LoginForm(
                        key: loginGlobalKey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  FadeInUp(
                    duration: const Duration(milliseconds: 1900),
                    child: _buildLoginButton(context),
                  ),
                  const SizedBox(height: 70),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (BuildContext context, state) {
        if (state == AuthState.authenticated) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => GalleryPage(),
            ),
          );
        }
        return GestureDetector(
          onTap: () async {
            final authBloc = BlocProvider.of<AuthBloc>(context);
            final isValidated = loginGlobalKey.currentState?.onValidateForm() ?? false;

            if (isValidated) {
              /// Login form
              final userName = loginGlobalKey.currentState?.getUserName;
              final password = loginGlobalKey.currentState?.getPassword;

              try {
                authBloc.onLogin(LoginEvent(password: password!, username: userName!));
              } catch (e) {
                final scaffoldMessenger = ScaffoldMessenger.of(context);
                scaffoldMessenger.showSnackBar(
                  SnackBar(
                    content: const Text('Login unsuccessfull'),
                    action: SnackBarAction(
                      label: 'Close',
                      onPressed: () {
                        scaffoldMessenger.hideCurrentSnackBar();
                      },
                    ),
                  ),
                );
              }
            }
          },
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                colors: [
                  Color.fromRGBO(143, 148, 251, 1),
                  Color.fromRGBO(143, 148, 251, .6),
                ],
              ),
            ),
            child: Center(
              child: state == AuthState.loading
                  ? const CircularProgressIndicator()
                  : const Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
            ),
          ),
        );
      },
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => LoginFormState();
}

class LoginFormState extends State<LoginForm> with InputValidationMixin {
  final _loginFormKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool onValidateForm() {
    final formState = _loginFormKey.currentState;
    if (formState != null) {
      return formState.validate();
    }
    return false;
  }

  String get getUserName => _usernameController.text;

  String get getPassword => hashPassword(_passwordController.text);

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _loginFormKey,
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color.fromRGBO(143, 148, 251, 1),
                ),
              ),
            ),
            child: _buildUsernameField(context),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: _buildPasswordField(context),
          )
        ],
      ),
    );
  }

  Widget _buildUsernameField(BuildContext context) {
    return TextFormField(
      controller: _usernameController,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: "Username",
        hintStyle: TextStyle(
          color: Colors.grey[700],
        ),
      ),
      validator: (String? username) {
        return onValidForm(
          input: username,
          fieldName: 'Username',
        );
      },
    );
  }

  Widget _buildPasswordField(BuildContext context) {
    return TextFormField(
      controller: _passwordController,
      obscureText: true,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: "Password",
        hintStyle: TextStyle(
          color: Colors.grey[700],
        ),
      ),
      validator: (String? password) {
        return onValidForm(
          input: password,
          fieldName: 'Password',
        );
      },
    );
  }
}

mixin InputValidationMixin {
  String? onValidForm({String? input, required String fieldName}) {
    if (input == null) return '$fieldName is not empty';
    if (input.length < 3) {
      return 'The $fieldName shouble be at least 3 letters.';
    }
    return null;
  }
}

String hashPassword(String password) {
  final passwordHashed = md5.convert(utf8.encode(password));
  return passwordHashed.toString();
}
