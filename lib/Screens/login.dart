import 'package:dristi_nayan/Screens/Components/input.dart';
import 'package:dristi_nayan/Screens/home.dart';
import 'package:dristi_nayan/Screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tailwindcss_defaults/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Dristi Nayan",
              style: GoogleFonts.jetBrainsMono(
                  fontSize: 36,
                  color: TailwindColors.blue,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "An Crime Management Application",
              style: GoogleFonts.jetBrainsMono(
                  fontSize: 16,
                  color: TailwindColors.coolGray.shade600,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: size.width,
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  color: TailwindColors.white,
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Login with Account",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.firaSans(
                          color: TailwindColors.blueGray,
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Input(
                        controller: emailController,
                        hintText: "Email",
                        keyboard: TextInputType.text,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Input(
                          controller: passwordController,
                          hintText: "Password",
                          keyboard: TextInputType.text,
                          isPassword: true),
                      const SizedBox(
                        height: 32,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Home()));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          "Login",
                          style: GoogleFonts.firaSans(fontSize: 18),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an Account?",
                            style: GoogleFonts.firaSans(
                                fontSize: 18, color: TailwindColors.blueGray),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Signup()));
                            },
                            child: Text(
                              "Sign up",
                              style: GoogleFonts.firaSans(
                                  fontSize: 18,
                                  color: TailwindColors.blue,
                                  decoration: TextDecoration.underline),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
