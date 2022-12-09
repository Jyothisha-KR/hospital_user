import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_user/login/login.dart';
import 'package:hospital_user/routes/route_constants.dart';
import 'package:hospital_user/signup/bloc/signup_bloc.dart';

class signUpPage extends StatelessWidget {
  signUpPage({super.key});

  TextEditingController _usernamecontroller = TextEditingController();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  TextEditingController _confirmpasswordcontroller = TextEditingController();

  final _authBloc = SignupBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupBloc(),
      child: BlocListener<SignupBloc, SignupState>(
        listener: (context, state) {
          if (state is SignupSuccess) {
            Navigator.pushReplacementNamed(context, RouteConstants.userSignup);
          } else {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text('Signup failed')));
          }
        },
        child: Scaffold(
          body: Center(
            child: DecoratedBox(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/j.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        controller: _usernamecontroller,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          hintText: 'Username',
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: _emailcontroller,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: _passwordcontroller,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: _confirmpasswordcontroller,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          hintText: 'Confirm password',
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 50,
                        onPressed: () {
                          _authBloc.add(
                            UserSignupEvent(
                              username: _usernamecontroller.text,
                              email: _emailcontroller.text,
                              password: _passwordcontroller.text,
                              confirmpassword: _confirmpasswordcontroller.text,
                            ),
                          );
                        },
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 90),
                        child: Row(
                          children: [
                            const Text(
                              'Already have an account?',
                              style: TextStyle(color: Colors.white),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginPage(),
                                  ),
                                );
                              },
                              child: const Text('Login'),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
