import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        title: Container(
          alignment: Alignment.center,
          child: Text(
            'Faça seu login',
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
        ),
      ),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: emailController,
            decoration: InputDecoration(
              labelText: 'E-mail',
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 16.0),
          TextField(
            controller: passwordController,
            decoration: InputDecoration(
              labelText: 'Senha',
              border: OutlineInputBorder(),
            ),
            obscureText: true,
          ),
          SizedBox(height: 20.0),

              Container(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,),
                  onPressed: () {  },
                  child: Text('Entrar', style: TextStyle(color: Colors.white), ),
                ),
              ),

          SizedBox(height: 16.0),
          TextButton(
            onPressed: () {  },
            child: Text('Criar uma nova conta'),
          ),
          TextButton(
            onPressed: () {  },
            child: Text('Esqueci a senha'),
          ),
        ],
      ),
    ),
    );
  }
}