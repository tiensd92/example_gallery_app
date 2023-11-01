import 'package:animate_do/animate_do.dart';
import 'package:example_gallery_app/pages/gallery/bloc/gallery_bloc.dart';
import 'package:example_gallery_app/pages/login/bloc/login_bloc.dart';
import 'package:example_gallery_app/pages/login/bloc/login_event.dart';
import 'package:example_gallery_app/pages/login/bloc/login_state.dart';
import 'package:example_gallery_app/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameEditTextController = TextEditingController();
  final passwordEditTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.isSuccess) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (_) => BlocProvider(
                create: (context) => GalleryBloc(),
                child: const GalleryPage(),
              ),
            ),
          );
        } else if (state.isFailure) {
          const snackBar = SnackBar(
            backgroundColor: Colors.red,
            content: Text('Login Error'),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      child: Scaffold(
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
      ),
    );
  }

  Widget _buildUsernameField(BuildContext context) {
    return TextField(
      controller: usernameEditTextController,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: "Username",
        hintStyle: TextStyle(
          color: Colors.grey[700],
        ),
      ),
    );
  }

  Widget _buildPasswordField(BuildContext context) {
    return TextField(
      controller: passwordEditTextController,
      obscureText: true,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: "Password",
        hintStyle: TextStyle(
          color: Colors.grey[700],
        ),
      ),
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      return GestureDetector(
        onTap: state.isLoading
            ? null
            : () {
                final username = usernameEditTextController.text.trim();
                final password = passwordEditTextController.text.trim();

                final event = LoginSubmmited(username: username, password: password);
                context.read<LoginBloc>().add(event);
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
            child: state.isLoading
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
    });
  }
}
