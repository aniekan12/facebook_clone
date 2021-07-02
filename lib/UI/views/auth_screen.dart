import 'package:facebook_clone/UI/views/facebook_home.dart';
import 'package:facebook_clone/UI/widgets/button_widget.dart';
import 'package:facebook_clone/UI/widgets/formfield_widget.dart';
import 'package:facebook_clone/UI/widgets/passwordfield_widget.dart';
import 'package:facebook_clone/UI/widgets/richtext_widget.dart';
import 'package:facebook_clone/UI/widgets/text_widget.dart';
import 'package:facebook_clone/logic/auth.dart';
import 'package:facebook_clone/logic/database/db_queries.dart';
import 'package:facebook_clone/utils/colors.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    //the form key
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 90,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: TextWidget(
                  text: 'Facebook',
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: lightBlue,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: TextWidget(
                  text: 'Connect with your Friend and \nstay safe',
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: FacebookFormField(
                  controller: emailController,
                  hintText: 'Email Address',
                  fontSize: 30,
                  color: grey,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: PasswordField(
                  controller: passwordController,
                  obscure: true,
                  hintText: 'Password',
                  fontSize: 30,
                  color: grey,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: TermsAndAgreement(),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 19,
                ),
                child: Row(
                  children: [
                    ClassyButton(
                      text: 'Sign in',
                      color: lightBlue,
                      onPressed: () async {
                        if (_formKey.currentState.validate()) {
                          await Auth().signIn(
                              email: emailController.text,
                              password: passwordController.text);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'login successful ${emailController.text}',
                              ),
                              duration: Duration(seconds: 10),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                  'login unsuccessful ${emailController.text}'),
                              duration: Duration(seconds: 10),
                            ),
                          );
                        }
                      },
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    ClassyButton(
                      text: 'Register',
                      color: darkBlue,
                      onPressed: () async {
                        if (_formKey.currentState.validate()) {
                          await Auth().signUp(
                              email: emailController.text,
                              password: passwordController.text);
                          CircularProgressIndicator();
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                  'registration successful ${emailController.text}'),
                              duration: Duration(seconds: 10),
                            ),
                          );
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => FaceBookHome(),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                  'registration unsuccessful ${emailController.text}'),
                              duration: Duration(seconds: 10),
                            ),
                          );
                        }
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
