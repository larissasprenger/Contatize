import 'package:flutter/material.dart';
import 'package:contatize/screens/home/home_page.dart'; // Certifique-se de que o caminho está correto
import 'package:contatize/shared/custom_text_field.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          margin: const EdgeInsets.only(top: 16),
          child: Center(
            child: Image.asset(
              'img/avatar.png',
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
        ),
        toolbarHeight: 120,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomTextField(
              label: 'Nome',
              inputType: TextInputType.text,
            ),
            const CustomTextField(
              label: 'Telefone',
              inputType: TextInputType.phone,
              isPassword: false,
              textInputAction: TextInputAction.done,
            ),
            const SizedBox(height: 20), // Espaço entre os campos e o botão
            ElevatedButton(
              onPressed: () {
                // Navega para a HomePage ao salvar
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: const Text('Salvar'),
            ),
          ],
        ),
      ),
    );
  }
}
