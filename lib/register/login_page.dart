import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isPasswordVisible = false; // Untuk mengontrol visibilitas password

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent, // Warna latar belakang AppBar
        centerTitle: true, // Memusatkan teks di AppBar
        title: const Text(
          'Halaman Login',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),

      body: Container(
        margin: const EdgeInsets.fromLTRB(10, 30, 20, 20), // Memberikan margin pada Container
        child: Column(
          children: [
            // Input Email
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email), 
                  labelText: 'Email',
                  hintText: 'Masukkan Email Anda',
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            // Input Password dengan ikon mata
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                obscureText: !_isPasswordVisible, // Mengontrol visibilitas password
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  labelText: 'Password',
                  hintText: 'Masukkan Password Anda',
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  ),
                ),
              ),
            ),

            // Tombol Login
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity, // Lebar tombol penuh
                child: ElevatedButton(
                  onPressed: () {
                    // Tambahkan aksi login di sini
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Login Berhasil!')),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}
