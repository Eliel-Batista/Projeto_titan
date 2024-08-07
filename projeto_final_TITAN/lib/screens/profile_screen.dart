import 'package:flutter/material.dart';
import '../components/bottom_navigation_bar.dart';
import '../widgets/bordered_elevated_button.dart'; // Importe o widget personalizado

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/image_profile.png'),
                ),
              ),
              const SizedBox(height: 20),
              BorderedElevatedButton(
                onPressed: () {
                  // Navegar para a página de cursos
                },
                text: 'Seus cursos',
              ),
              const SizedBox(height: 10),
              BorderedElevatedButton(
                onPressed: () {
                  // Navegar para a página de salvos
                },
                text: 'Salvos',
              ),
              const SizedBox(height: 10),
              BorderedElevatedButton(
                onPressed: () {
                  // Navegar para a página de pagamento
                },
                text: 'Pagamento',
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  // Sair do aplicativo
                },
                child: const Text(
                  'Sair do aplicativo',
                  style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 1,
        onTap: (index) {
          // Implementar navegação com base no índice selecionado
        },
      ),
    );
  }
}
