import 'package:flutter/material.dart';
import 'package:scheduller_mobile/utils/color_pallete.dart';
import 'package:scheduller_mobile/utils/typography.dart';
import 'package:scheduller_mobile/views/home_view.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool showPassword = true;

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  // Fungsi user login dengan firebase auth
  void authUserLogin() {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: _email.text, password: _password.text)
        .then((value) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomeView()));
    }).catchError((err) {
      // Fungsi pop up yang menampilkan pesan eror ketika firebase menangkap eror
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Column(
              children: [
                Image.asset(
                  'assets/error.png',
                  height: 250,
                  width: 250,
                ),
                Text(
                  'Ada Kesalahan!',
                  style: TypographyRoboto.mediumHeading3,
                ),
              ],
            ),
            content: Text(err.message),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  "Okay",
                  style: TypographyRoboto.skip,
                ),
              ),
            ],
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
            bottom: 30,
          ),
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
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      // Textfield untuk email
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
                        // Validator untuk user input email agar user memasukan email yang valid dan email tidak boleh kosong
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Email tidak boleh kosong';
                          } else if (!RegExp(
                                  r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$')
                              .hasMatch(value)) {
                            return 'Masukkan email yang valid';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      // Text field untuk password
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
                          // Fungsi untuk membuat icon mata untuk menampilkan atau menyembunyikan password
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                showPassword = !showPassword;
                              });
                            },
                            icon: Icon(
                              showPassword
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        obscureText: showPassword,
                        // Validator untuk user input password agar minimal pw 6 karakter dan inputan tidak boleh kosong
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Kata sandi tidak boleh kosong';
                          } else if (value.length < 6) {
                            return 'Kata sandi harus 6 karakter';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            authUserLogin();
                          }
                        },
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
      ),
    );
  }
}
