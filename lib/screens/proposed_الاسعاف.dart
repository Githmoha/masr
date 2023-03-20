import 'package:flutter/material.dart';

class Proposed_Ambulance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'مقترحك للاسعاف',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: TextFormField(
              maxLines: 15,
              decoration: InputDecoration(
                  hintText: 'كتابة المقترح...',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          FlatButton(onPressed: () {}, child: Text('ارسال المقترح'),
            color: Colors.blueGrey,
          )
        ],
      ),
    );
  }
}