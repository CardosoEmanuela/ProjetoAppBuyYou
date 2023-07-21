import 'package:flutter/material.dart';

class Componentes {
  appBar(texto) {
    return AppBar(
      title: criaTexto(texto),
      centerTitle: true,
      backgroundColor: Color.fromARGB(0xFF, 0X18, 0x1F, 0X27),
    );
  }

  criarInputTexto(tipoTeclado, textoEtiqueta, controlador, msgValidacao) {
    return TextFormField(
      keyboardType: tipoTeclado,
      decoration: InputDecoration(
        labelText: textoEtiqueta,
        labelStyle: const TextStyle(
            color: Color.fromARGB(255, 255, 255, 1000), fontSize: 25.0),
      ),
      textAlign: TextAlign.center,
      style: const TextStyle(
          color: Color.fromARGB(255, 255, 255, 1000), fontSize: 25.0),
      controller: controlador,
      validator: (value) {
        if (value!.isEmpty) {
          return msgValidacao;
        }
      },
    );
  }

  criarBotao(controladorFormulario, funcao, titulo) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
            height: 70,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(24, 31, 39, 1000),
              ),
              onPressed: () {
                if (controladorFormulario.currentState!.validate()) {
                  funcao();
                }
              },
              child: Text(
                titulo,
                style: const TextStyle(
                    color: Color.fromARGB(255, 255, 255, 1000), fontSize: 30.0),
              ),
            ),
          ),
        )
      ],
    );
  }

  criaTexto(texto) {
    return Text(texto,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Color.fromARGB(255, 255, 255, 1000),
          fontSize: 20.0,
        ));
  }

  criaAppBar(texto, VoidCallback voltar, seguir) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: voltar,
      ),
      title: criaTexto(texto),
      centerTitle: true,
      backgroundColor: Color.fromARGB(0xFF, 0X18, 0x1F, 0X27),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.arrow_forward),
          onPressed: seguir,
        ),
      ],
    );
  }

  criaInputTexto(tipoTeclado, textoEtiqueta, controlador, senha, msgValidacao) {
    return TextFormField(
      keyboardType: tipoTeclado,
      obscureText: senha,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(20),
        labelText: textoEtiqueta,
        labelStyle: const TextStyle(
            color: Color.fromARGB(255, 255, 255, 1000), fontSize: 18.0),
      ),
      textAlign: TextAlign.left,
      style: const TextStyle(
        color: Color.fromARGB(255, 255, 255, 1000),
        fontSize: 20.0,
      ),
      controller: controlador,
      validator: (value) {
        if (value!.isEmpty) {
          return msgValidacao;
        }
      },
    );
  }

  criaTextoLogin(conteudo, tam, cor) {
    return Text(
      conteudo,
      style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 1, 8, 15)),
    );
  }

  criaTextFieldLogin(titulo, senha, tipoTeclado, controlador) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
        controller: controlador,
        keyboardType: tipoTeclado,
        obscureText: senha,
        style: TextStyle(color: Colors.white), // Altere para a cor branca
        cursorColor: Color.fromARGB(0xFF, 0x36, 0xFF, 0X47),
        decoration: InputDecoration(
          labelText: titulo,
          labelStyle:
              TextStyle(color: Colors.white), // Altere para a cor branca
          hintStyle: TextStyle(color: Colors.white), // Cor do texto de sugestão
          border: OutlineInputBorder(
            borderSide:
                BorderSide(color: Colors.white), // Altere para a cor branca
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color:
                    Colors.white), // Cor da borda quando o campo está em foco
          ),
        ),
      ),
    );
  }

  criaBotaoLogin(rotulo, funcao, altura, largura) {
    return SizedBox(
      height: 30,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white, // Cor de fundo branca
        ),
        onPressed: funcao,
        child: criaTextoLogin(rotulo, 20, Colors.black), // Cor do texto preto
      ),
    );
  }

  criaBotaoImagem(rotulo, funcao) {
    return SizedBox(
      height: 30,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 249, 252, 255),
        ),
        onPressed: funcao,
        child: criaTextoLogin(rotulo, 20, Color.fromARGB(255, 249, 252, 255)),
      ),
    );
  }

  criaBotao(controladorFormulario, funcao, titulo) {
    return SizedBox(
        height: 30,
        child: Expanded(
          flex: 6,
          child: Container(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 249, 252, 255),
              ),
              onPressed: () {
                if (controladorFormulario.currentState!.validate()) {
                  funcao;
                }
              },
              child: Text(
                titulo,
                style: const TextStyle(color: Color.fromARGB(255, 66, 65, 68)),
              ),
            ),
          ),
        ));
  }
}
