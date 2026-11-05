import 'package:flutter/material.dart';
import 'sidemenu.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? _namauser;

  @override
  void initState() {
    super.initState();
    _loadUsername();
  }

  //mengambil data username dari local storage
  Future<void> _loadUsername() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? username = prefs.getString('username');

    if (!mounted) return;

    setState(() {
      _namauser = username;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Text(
          'Ini adalah halaman User ${_namauser ?? ''}',
        ),
      ),
      drawer: const Sidemenu(),
    );
  }
}