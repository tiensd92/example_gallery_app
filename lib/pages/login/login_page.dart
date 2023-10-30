import 'package:animate_do/animate_do.dart';
import 'package:example_gallery_app/core/core.dart';
import 'package:example_gallery_app/pages/login/blocs/login_bloc.dart';
import 'package:example_gallery_app/pages/login/blocs/login_state.dart';
import 'package:example_gallery_app/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LoginBloc _bloc = LoginBloc(getIt());

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _bloc,
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (_, state) {
          switch (state.status) {
            case RequestStatus.initialize:
              break;
            case RequestStatus.loading:
              break;
            case RequestStatus.success:
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (_) => GalleryPage(),
              ));
              break;
            case RequestStatus.failed:
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(state.message ?? '')));
              break;
          }
        },
        builder: (_, state) => Scaffold(
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
      onChanged: (text) => _bloc.onChangeUsername(text),
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
      onChanged: (text) => _bloc.onChangePass(text),
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (((_bloc.state.username?.length ?? 0) < 3) || (_bloc.state.password?.length ?? 0) < 3) {
          return;
        }
        _bloc.onSubmit();
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
          child: _bloc.state.status == RequestStatus.loading
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
  }
}
