import 'package:email_validator/email_validator.dart';
import '../bloc/auth_bloc.dart';
import 'signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/../HomePage.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: const Text('Cocktailer'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        onPressed: () {
          Navigator.pop(context,
              MaterialPageRoute(builder: (context) => const HomePage()));
        },
        backgroundColor: Color.fromARGB(255, 230, 57, 18),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is Authenticated) {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          }

          if (state is AuthError) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.error)));
          }
        },
        builder: (context, state) {
          if (state is Loading) {
            return Center(child: CircularProgressIndicator());
          }
          if (state is UnAuthenticated) {
            return Center(
              child: Padding(
                padding: EdgeInsets.all(60),
                child: SingleChildScrollView(
                  reverse: true,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 38),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              TextFormField(
                                controller: _emailController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    hintText: 'Email',
                                    border: OutlineInputBorder()),
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) {
                                  return value != null &&
                                          !EmailValidator.validate(value)
                                      ? 'Invalid Email format'
                                      : null;
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                controller: _passwordController,
                                obscureText: true,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                    hintText: 'Password',
                                    border: OutlineInputBorder()),
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) {
                                  return value != null && value.length < 6
                                      ? 'Password less then 6 chars'
                                      : null;
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.7,
                                child: ElevatedButton(
                                  onPressed: () {
                                    _authenticateUser(context);
                                  },
                                  child: const Text('Login'),
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Don't have account? ",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 14),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SignupScreen()),
                                      );
                                    },
                                    child: Text(
                                      "Signup",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
          if (state is Authenticated) {
            final user = FirebaseAuth.instance.currentUser;
            return Center(
              child: Padding(
                padding: EdgeInsets.only(top: 60, left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Logged In',
                      style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Email: ${user?.email}',
                      style: TextStyle(color: Colors.blue),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      height: 30,
                      width: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          context.read<AuthBloc>().add(SignoutRequest());
                        },
                        child: const Text('Logout'),
                      ),
                    )
                  ],
                ),
              ),
            );
          }
          return Container();
        },
      ),
    );
  }

  _authenticateUser(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      BlocProvider.of<AuthBloc>(context).add(
          SignInRequested(_emailController.text, _passwordController.text));
    }
  }
}
