import 'package:flutter/material.dart';
import 'package:notes_app/views/notes_view.dart';
import 'package:notes_app/views/widgets/custom_button.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Image.asset(
            'assets/images/logo.png',
            height: 100,
          )),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Welcome to note app',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 100,
          ),
          CustomButton(
            hinText: 'Get Started',
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const NotesView();
              }));
            },
          ),
        ],
      ),
    );
  }
}
