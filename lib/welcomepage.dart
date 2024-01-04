import 'package:flutter/material.dart';
import 'package:travel_s/homepage.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Spacer(),
              Image.asset("assets/image/imagesT2.png"),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Explore Your Journey\n only With Us ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const Text(
                textAlign: TextAlign.center,
                "All your vacations destinations are here\n enjoy with us",
                style: TextStyle(fontSize: 17, color: Colors.black45),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 30.0),
                child: Spacer(),
              ),
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    child: Text(
                      "Get Satrted",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
