import 'package:flutter/material.dart';

class CallbackFunctions extends StatelessWidget {
  const CallbackFunctions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VoidCallbackWidgetButton(
          onPressed: () {
            print("Voidcallback ausgeführt");
          },
          buttonText: "Klick mich",
        ),

        VoidCallbackWidgetButton(onPressed: () {}, buttonText: "Text 2"),
        ElevatedButton(
          onPressed: () {
            print("Hello World");
          },
          child: Text("Hello World Button"),
        ),
        ElevatedButton(
          onPressed: () {
            print("Hallo Batch 11");
          },
          child: Text("Say Hello"),
        ),

        FunctionCallbackWidget(
          onChanged: (text) {},
          keks: (text) {
            return null;
          },
        ),

        CustomCallbackWidget(
          onLogin: (email, password) =>
              print("Login erfolgreich mit credentials $email und $password"),
        ),
      ],
    );
  }
}

class VoidCallbackWidgetButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  const VoidCallbackWidgetButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(onPressed: onPressed, child: Text(buttonText));
  }
}

class FunctionCallbackWidget extends StatelessWidget {
  final void Function(String text) onChanged;
  final int? Function(String text) keks;
  const FunctionCallbackWidget({
    super.key,
    required this.onChanged,
    required this.keks,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(labelText: "Gib etwas ein"),
    );
  }
}

typedef LoginCallBack = void Function(String email, String password);

class CustomCallbackWidget extends StatelessWidget {
  final LoginCallBack onLogin;
  const CustomCallbackWidget({super.key, required this.onLogin});

  @override
  Widget build(BuildContext context) {
    final emailText = TextEditingController();
    final passwordText = TextEditingController();

    return Column(
      children: [
        TextField(controller: emailText),
        TextField(controller: passwordText),
        ElevatedButton(
          onPressed: () {
            onLogin(emailText.text, passwordText.text);
          },
          child: Text("Login"),
        ),
      ],
    );
  }
}
