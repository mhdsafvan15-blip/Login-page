import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dialog Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dialog Box Example'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green, // button color
              foregroundColor: Colors.white, // text color
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            child: Text('Show Alert'),
            onPressed: () {
              // Show a dialog when button is pressed
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Hello!'),
                    content: Text('This is a simple alert dialog box.'),
                    actions: [
                      TextButton(
                        child: Text('Cancel'),
                        onPressed: () {
                          Navigator.pop(context); // close the dialog
                        },
                      ),
                      TextButton(
                        child: Text('OK'),
                        onPressed: () {
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('You pressed OK!')),
                          );
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

