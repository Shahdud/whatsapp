import 'package:flutter/material.dart';
import 'package:whatsapp_screen/screens/whats_app_screen.dart';

void main() {
  runApp(const WhatsApp());
}

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      debugShowCheckedModeBanner: false,
      home: const WhatsAppScreen() ,
    );
  }
}