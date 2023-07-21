import 'package:shop_app/util/componentes_gerais.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    fazLogin() {
      if (txtEmail.text == 'emanuela@gmail.com' && txtSenha.text == '123') {
        Navigator.of(context).pushNamed('/TamanhoMedidas');
        print('SIM ${txtEmail.text} - ${txtSenha.text}');
      } else {
        print('NAO ${txtEmail.text} - ${txtSenha.text}');
      }
    }

    String msg = "Informe os seus dados";
    limparCampos() {
      txtEmail.text = "";
      txtSenha.text = "";
      setState(() {
        msg = "Informe os dados";
      });
    }

    return Scaffold(
      appBar: Componentes().appBar("Olá, faça seu login!"),
      floatingActionButton: FloatingActionButton(
        onPressed: limparCampos,
        backgroundColor: (Color.fromARGB(0xFF, 0X18, 0x1F, 0X27)),
        child: Icon(Icons.refresh),
      ),
      body: Container(
        color: Color.fromARGB(0xFF, 0X18, 0x1F, 0X27),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.all(1)),
                    Image.asset(
                      "assets/images/logo.png",
                      width: 200,
                      height: 200,
                    ),
                    Componentes().criaTextFieldLogin(
                        'Email', false, TextInputType.emailAddress, txtEmail),
                    Componentes().criaTextFieldLogin(
                        'Senha', true, TextInputType.number, txtSenha),
                    const SizedBox(height: 30),
                    Componentes().criaBotaoLogin('Entrar', fazLogin, 50, 200),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Esqueci minha senha',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(width: 8),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/CadastroCliente');
                          },
                          child: Text(
                            'Cadastrar-se',
                            style: TextStyle(
                                color: Color.fromARGB(0xFF, 0x36, 0xFF, 0X47)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
