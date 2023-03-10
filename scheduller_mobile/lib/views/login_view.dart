import 'package:flutter/material.dart';
import 'package:scheduller_mobile/utils/color_pallete.dart';
import 'package:scheduller_mobile/utils/typography.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            children: [
              SafeArea(
                child: Image.asset(
                  'assets/login.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _email,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: const TextStyle(
                          color: Color(0xFF878787),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        filled: true,
                        fillColor: ColorPallete.formField,
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: ColorPallete.primary,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    TextFormField(
                      controller: _password,
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        labelText: 'Kata Sandi',
                        labelStyle: const TextStyle(
                          color: Color(0xFF878787),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        filled: true,
                        fillColor: ColorPallete.formField,
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: ColorPallete.primary,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              showPassword = !showPassword;
                            });
                          },
                          icon: Icon(
                            showPassword
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      obscureText: showPassword,
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(350, 50),
                        backgroundColor: ColorPallete.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          'Masuk',
                          style: TypographyRoboto.next,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
