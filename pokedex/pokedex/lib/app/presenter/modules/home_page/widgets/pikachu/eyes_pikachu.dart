import 'package:flutter/material.dart';

class Eye extends StatelessWidget {
  final bool right;

  const Eye({Key key, this.right}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15,
      height: 15,
      alignment: right ? Alignment.topLeft : Alignment.topRight,
      decoration: BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: CircleAvatar(
          radius: 3.5,
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}

class Eyes extends StatelessWidget {
  const Eyes({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Eye(
            right: false,
          ),
          SizedBox(width: 30),
          Eye(
            right: true,
          )
        ],
      ),
    );
  }
}
