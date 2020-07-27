import 'package:flutter/material.dart';

class DirectContact extends StatelessWidget {
  final double width;

  const DirectContact({this.width});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Direct Contact',
                style: TextStyle(
                  color: Theme.of(context).accentColor,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('(+2) 01067732982'),
          ),
          ListTile(
            leading: Icon(Icons.mail),
            title: Text('loay.mahmoud99@eng-st.cu.edu.eg'),
          ),
        ],
      ),
    );
  }
}
