import 'package:flutter/material.dart';
import 'home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String? namauser;

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  //menyimpan username ke local storage
  Future<void> _saveUsername() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', _usernameController.text);

    if (!mounted) return;
  }

  //menampilkan komponen TextField
  Widget _showInput({
    required TextEditingController controller,
    required String placeholder,
    bool isPassword = false,
  }) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: placeholder,
      ),
    );
  }

  //menampilkan alert dialog konfirmasi navigasi
  Future<void> _showDialog({
    required String pesan,
    required Widget targetPage,
  }) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text(pesan),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.pop(dialogContext);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => targetPage,
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _showInput(
              controller: _usernameController,
              placeholder: 'Masukkan Username',
            ),
            const SizedBox(height: 16),
            _showInput(
              controller: _passwordController,
              placeholder: 'Masukkan Password',
              isPassword: true,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () async {
                await _saveUsername();
                _showDialog(
                  pesan: 'Login berhasil!',
                  targetPage: const HomePage(),
                );
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}