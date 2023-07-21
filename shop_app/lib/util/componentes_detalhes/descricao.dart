import 'package:flutter/material.dart';
import 'package:shop_app/util/componentes_home/produtos.dart';

import 'package:shop_app/util/componentes_home/cores_body.dart';

class Description extends StatelessWidget {
  const Description({
    required Key key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        product.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
