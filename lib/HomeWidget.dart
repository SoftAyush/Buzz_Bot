import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late Gemini gemini;

  @override
  void initState() {
    super.initState();
    gemini = Gemini.instance;
  }

  Future<String> _generateMessage() async {
    try {
      String prompt = "Generate a short motivational message";
      final response = await gemini.prompt(parts: [Part.text(prompt)]);
      return response?.output ?? '';
    } catch (err) {
      debugPrint("⛔⛔⛔⛔⛔⛔ $err");
      return "Failed to get message: $err";
    }
  }

  Future<void> sendWhatsAppMessage(String message, String phoneNumber) async {
    // final Uri url = Uri.parse("https://wa.me/$phoneNumber?text=${Uri.encodeComponent(message)}");
    final Uri url = Uri.parse("whatsapp://send?phone=$phoneNumber&text=${Uri.encodeComponent(message)}");

    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch WhatsApp';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AI Message Sender'), centerTitle: true),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            String message = await _generateMessage();
            sendWhatsAppMessage(message, '9818899689'); // Replace with user phone number
          },
          child: const Text('Send Motivational Message'),
        ),
      ),
    );
  }
}
