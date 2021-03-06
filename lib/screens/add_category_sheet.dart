import 'package:flutter/material.dart';
import 'package:flutter_shopping_list/models/shopping_data.dart';
import 'package:provider/provider.dart';

class AddCategorySheet extends StatefulWidget {
  @override
  State<AddCategorySheet> createState() => _AddCategorySheetState();
}

class _AddCategorySheetState extends State<AddCategorySheet> {
  String newCategory = '';
  int newPriority = 1;

  void addCategoryAndReturn(BuildContext context) {
    Provider.of<ShoppingData>(context, listen: false).addCategory(newCategory, newPriority, 99);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: 'Enter Category Name',
            ),
            onChanged: (value) {
              newCategory = value;
            },
            onSubmitted: (value) => addCategoryAndReturn(context),
          ),
          TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: 'Enter Category Priority',
            ),
            onChanged: (value) {
              // todo handle error if user inputs a non-int for the priority field
              newPriority = int.parse(value);
            },
            onSubmitted: (value) => addCategoryAndReturn(context),
          ),
          SizedBox(
            height: 10.0,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                )),
            onPressed: () {
              Provider.of<ShoppingData>(context, listen: false).addCategory(newCategory, newPriority, 99);
              Navigator.pop(context);
            },
            child: Text(
              'Add Category',
              style: TextStyle(fontSize: 20.0, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
// class AddCategorySheet extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(20.0),
//       child: Column(
//         children: <Widget>[
//           TextField(
//             textAlign: TextAlign.center,
//             decoration: InputDecoration(
//               hintText: 'Enter Category Name',
//             ),
//           ),
//           TextField(
//             textAlign: TextAlign.center,
//             decoration: InputDecoration(
//               hintText: 'Enter Category Priority',
//             ),
//           ),
//           SizedBox(
//             height: 10.0,
//           ),
//           ElevatedButton(
//             style: ElevatedButton.styleFrom(
//                 primary: Colors.green,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(32.0),
//                 )),
//             onPressed: () {},
//             child: Text(
//               'Add Category',
//               style: TextStyle(fontSize: 20.0, color: Colors.black),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
