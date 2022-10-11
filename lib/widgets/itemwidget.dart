import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({Key? key, required this.catalog}) : super(key: key);
  final catalog;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const StadiumBorder(),
      child: ListTile(
        onTap: () {
          print("${catalog.name} pressed");
        },
        leading: Image.network(catalog.image),
        title: Text(catalog.name),
        subtitle: Text(catalog.desc),
        trailing: Text(
          "\$${catalog.price}",
          textScaleFactor: 1.3,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
