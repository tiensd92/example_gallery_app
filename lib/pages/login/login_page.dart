import 'package:animate_do/animate_do.dart';
import 'package:example_gallery_app/core/core.dart';
import 'package:example_gallery_app/pages/login/bloc/login_bloc.dart';
import 'package:example_gallery_app/pages/pages.dart';
import 'package:example_gallery_app/repositories/network_repository/network_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final LoginBloc _bloc;

  @override
  void initState() {
    _bloc = LoginBloc(getIt<NetworkRepository>());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _bloc,
      child: BlocListener<LoginBloc, LoginState>(
        listenWhen: (previous, current) =>
            previous.errorString != current.errorString &&
            current.errorString != null,
        listener: (context, state) {
          _showDialog(context, state.errorString!);
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child:
                BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
              return Column(
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
                          child: GestureDetector(
                            onTap: () {
                              _bloc.add(LoginEvent.onSubmit(
                                  onSuccess: () {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                        builder: (_) => GalleryPage(),
                                      ),
                                    );
                                  },
                                  onError: (error) {
                                    _showDialog(context, error);
                                  }));
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
                                child: state.isLoading ? const CircularProgressIndicator() : const Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 70),
                      ],
                    ),
                  )
                ],
              );
            }),
          ),
        ),
      ),
    );
  }

  Widget _buildUsernameField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: "Username",
        hintStyle: TextStyle(
          color: Colors.grey[700],
        ),
      ),
      onChanged: (value) => _bloc.add(LoginEvent.onChangeUsername(value)),
    );
  }

  Widget _buildPasswordField(BuildContext context) {
    return TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Password",
          hintStyle: TextStyle(
            color: Colors.grey[700],
          ),
        ),
        onChanged: (value) => _bloc.add(LoginEvent.onChangePassword(value)));
  }

  void _showDialog(BuildContext context, String error) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(error!),
            actions: [
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Text("Ok"),
              )
            ],
          );
        });
  }
}
