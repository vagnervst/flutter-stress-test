import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListItem extends StatelessWidget {
  final String name;

  ListItem({
    String name
  }): this.name = name;

  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(12),
      leading: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(width: 2, color: Colors.grey[200])
        ),
        child: Icon(
          Icons.ac_unit,
          color: Colors.pink,
        ),
      ),
      title: Center(
        widthFactor: 1,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Column(
            children: [
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
              Text('R\$ 1.400,00', textAlign: TextAlign.justify)
            ],
          )
        ),
      ),
      trailing: Wrap(
        direction: Axis.vertical,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Text('8 de março'),
          Text(
            'Aprovado',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
