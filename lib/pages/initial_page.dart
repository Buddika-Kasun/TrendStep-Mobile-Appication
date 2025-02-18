import 'package:trendstep_mobile_appication/components/my_button.dart';
import 'package:trendstep_mobile_appication/pages/signup_page.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 20.0, left: 20, top: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: ClipRRect(
                child: Image.asset(
                  'assets/NIKE2.png',
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              'Just Do It',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    "Brand new sneakers and custom kicks",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    " made with premium quality.",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            MyButton(
              text: 'Shop Now',
              color: Colors.black,
              width: double.infinity,
              height: 50,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupPage(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
