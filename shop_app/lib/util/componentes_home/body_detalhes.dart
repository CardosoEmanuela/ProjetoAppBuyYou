import 'package:flutter/material.dart';
import 'package:shop_app/util/componentes_home/cores_body.dart';
import 'package:shop_app/util/componentes_home/produtos.dart';

import '../componentes_detalhes/add_carrinho.dart';
import '../componentes_detalhes/cor_tamanho.dart';
import '../componentes_detalhes/favorito.dart';
import '../componentes_detalhes/descricao.dart';
import '../componentes_detalhes/titulo_imagem.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({required this.product});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(key: UniqueKey(), product: product),
                      SizedBox(height: kDefaultPaddin / 2),
                      Description(key: UniqueKey(), product: product),
                      SizedBox(height: kDefaultPaddin / 2),
                      CounterWithFavBtn(key: UniqueKey()),
                      SizedBox(height: kDefaultPaddin / 2),
                      AddToCart(key: UniqueKey(), product: product),
                    ],
                  ),
                ),
                ProductTitleWithImage(key: UniqueKey(), product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
