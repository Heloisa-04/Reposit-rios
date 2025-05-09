import 'package:componentes_flutter/ui/widgets/custom_button.dart';
import 'package:componentes_flutter/ui/widgets/custom_title.dart';
import 'package:flutter/material.dart';
import 'package:componentes_flutter/ui/screens/email_screen.dart';


class PasswordReset extends StatelessWidget {
  const PasswordReset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center( 
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(
              mainAxisSize: MainAxisSize.min, 
              crossAxisAlignment: CrossAxisAlignment.center, 
              children: [
                Image.asset(
                  'assets/icons/reset.png',
                  width: 150,
                  height: 150,
                ),
                SizedBox(height: 20),
                CustomTitle(
                  text: "We Sent you an Email to reset your password.",
                ),
                SizedBox(height: 14),
                CustomButton(
                  text: "Return to Login",
                  onPressed: () {
                    Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
