import 'package:flutter/material.dart';
import '/screens/welcome_screen.dart';
import '/screens/login_screen.dart';
import '/screens/registration_screen.dart';
import '/screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey:
          'AIzaSyA9C019PsD7ExHtpMmjYNVDD_cZjj9v5Bs', //Replace with API key from google-services.json
      appId:
          '1:994328252566:android:3035491e750fd8aa95f2b7', // Replace with App ID from google-services.json`enter code here`
      messagingSenderId:
          '994328252566', // Replace with Messaging Sender ID from google-services.json
      projectId:
          'flash-chat-7a01e', // Replace with Project ID from google-services.json
    ),
  );
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        ChatScreen.Id: (context) => ChatScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
      },
    );
  }
}
