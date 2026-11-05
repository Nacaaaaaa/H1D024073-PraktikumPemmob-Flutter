import 'package:flutter/material.dart';
//import 'hello_world.dart';
//import 'column_widget.dart';
//import 'row_widget.dart';
//import 'ui/produk_form.dart';
//import 'ui/produk_page.dart';
import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /**override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplikasi Flutter Pertama",
      home: const HelloWorld(),
    );
  }**/

  /**@override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: "Aplikasi Flutter Pertama",
        home: const ColumnWidget(),
      );
    }**/

  /**@override
    Widget build(BuildContext context) {
      return const MaterialApp(
        title: 'Aplikasi Flutter Pertama',
        home: RowWidget(),
      );
    }**/

  /**@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Flutter Pertama',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white
        ),
      ),
      home: const ProdukForm(),
    );
  }**/

  /**@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Flutter Pertama',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white
        ),
      ),
      home: const ProdukPage(),
    );
  }**/

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Menu',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white
        ),
      ),
      home: const LoginPage(),
    );
  }
}