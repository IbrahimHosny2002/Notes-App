import 'package:flutter/material.dart';

class CustomNoteIteam extends StatelessWidget {
  const CustomNoteIteam({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 24,
        bottom: 24,
        left: 16
      ),
      decoration: BoxDecoration(
        color: const Color(0XFFFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Padding(
              padding: EdgeInsets.only(
                bottom: 24
              ),
              child: Text(
                'Flutter tips',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black
                ),
              ),
            ),
            subtitle:  Padding(
              padding: const EdgeInsets.only(
                bottom: 16
              ),
              child: Text(
                'Build your career with tharwat samy',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black.withOpacity(0.4)
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: (){},
              icon: const Icon(
                Icons.delete,
                color: Colors.black,
                size: 35,
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(
              right: 24,
            ),
             child: Text(
                'May 21 2022',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black.withOpacity(0.4)
                ),
              ),
           ),
        ],
      ),
    );
  }
}