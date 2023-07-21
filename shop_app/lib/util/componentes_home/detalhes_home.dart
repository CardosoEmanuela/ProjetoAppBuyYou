import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/util/componentes_home/cores_body.dart';
import 'package:shop_app/util/componentes_home/produtos.dart';
import 'package:shop_app/util/componentes_home/body_detalhes.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({required Key key, required this.product})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(0xFF, 0X18, 0x1F, 0X27),
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () {
          Navigator.of(context).pushNamed('/LoginPage');
        },
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
          ),
          onPressed: () {
            Navigator.of(context).pushNamed('/');
          },
        ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/cart.svg"),
          onPressed: () {
            Navigator.of(context).pushNamed('/');
          },
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
