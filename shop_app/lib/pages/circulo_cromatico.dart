import 'package:flutter/material.dart';

class Cromatico extends StatelessWidget {
  void navigateBack(BuildContext context) {
    Navigator.of(context).pushNamed('/TamanhoMedidas');
  }

  void navigateRight(BuildContext context) {
    Navigator.of(context).pushNamed('/HomeScreem');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OneImageScreen(),
                    ),
                  );
                },
                child: Image.asset('assets/images/first_image.jpeg'),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondImageScreen(),
                    ),
                  );
                },
                child: Image.asset('assets/images/second_image.png'),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ThirdImageScreen(),
                    ),
                  );
                },
                child: Image.asset('assets/images/third_image.png'),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FourImageScreen(),
                    ),
                  );
                },
                child: Image.asset('assets/images/four_image.png'),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FiveImageScreen(),
                    ),
                  );
                },
                child: Image.asset('assets/images/five_image.png'),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SixImageScreen(),
                    ),
                  );
                },
                child: Image.asset('assets/images/six_image.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OneImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Center(
        child: Image.asset('assets/images/first_result.png'),
      ),
    );
  }
}

class SecondImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Center(
        child: Image.asset('assets/images/second_result.png'),
      ),
    );
  }
}

class ThirdImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Center(
        child: Image.asset('assets/images/third_result.png'),
      ),
    );
  }
}

class FourImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Center(
        child: Image.asset('assets/images/four_result.png'),
      ),
    );
  }
}

class FiveImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Center(
        child: Image.asset('assets/images/five_result.png'),
      ),
    );
  }
}

class SixImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Center(
        child: Image.asset('assets/images/six_result.png'),
      ),
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    leading: IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.of(context).pushNamed('/StyleQuiz');
      },
    ),
    title: Text("Círculo Cromático"),
    centerTitle: true,
    backgroundColor: const Color.fromARGB(0xFF, 0X18, 0x1F, 0X27),
    actions: <Widget>[
      IconButton(
        icon: const Icon(Icons.arrow_forward),
        onPressed: () {
          Navigator.of(context).pushNamed('/StyleQuiz');
        },
      ),
    ],
  );
}
