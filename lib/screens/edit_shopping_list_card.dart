import 'package:flutter/material.dart';

class EditListCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: EdgeInsets.all(20.0),
      title: Text(
        'Edit Shopping List',
      ),
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: 'Bakery'
          ),
        ),
        TextField(decoration: InputDecoration(
            hintText: '1'
        ),),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.green,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0),)
          ),
          onPressed: () {},
          child: Text(
            'Save Shopping List',
            style: TextStyle(fontSize: 20.0, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
