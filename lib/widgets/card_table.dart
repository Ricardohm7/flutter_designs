import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SingleCard(
            color: Colors.blue,
            icon: Icons.border_all,
            text: 'General',
          ),
          _SingleCard(
            color: Colors.pinkAccent,
            icon: Icons.car_rental,
            text: 'Rent',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.purpleAccent,
            icon: Icons.local_grocery_store,
            text: 'Transport',
          ),
          _SingleCard(
            color: Colors.orangeAccent,
            icon: Icons.settings,
            text: 'Settings',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.deepPurple,
            icon: Icons.cloud,
            text: 'Sync',
          ),
          _SingleCard(
            color: Colors.blue,
            icon: Icons.pages,
            text: 'Documents',
          ),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  const _SingleCard({
    Key? key,
    required this.icon,
    required this.color,
    required this.text,
  }) : super(key: key);

  final IconData icon;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 180,
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        CircleAvatar(
          backgroundColor: color,
          child: Icon(
            icon,
            size: 35,
          ),
          radius: 30,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(text, style: TextStyle(color: color, fontSize: 18))
      ]),
    );
  }
}
