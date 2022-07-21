import 'package:flutter/material.dart';

class CustomTopBar extends StatelessWidget {
  const CustomTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Climate Change Literacy'),
        centerTitle: true,
      ),
      body: Align(
        alignment: Alignment.topLeft,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              child: Row(
                children: [ Image.asset('logo.png'),
              Column(
                children: [
                  _NavBarItem(
                      title: "English",
                      press: () {}),
                  SizedBox(width: 30,),
                  _NavBarItem(
                      title: "Log in",
                      press: () {}),
                  SizedBox(width: 30,),
                  DefaultButton(
                    title: "Sing Up",
                    press: () {},
                  ),
                ],
              )
          ],
        ),
      ),
    ],
    ),
    ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  final Function press;
  const _NavBarItem({required this.title,required this.press, Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            title.toUpperCase(),
            style: TextStyle(
              color: Color(0xFF047857),
              fontFamily: 'Inter',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
    );
  }
}

class DefaultButton extends StatelessWidget {
  final String title;
  final Function press;
  const DefaultButton({required this.title, required this.press, Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: FlatButton(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        color: Colors.lightGreen,
        onPressed: press,
        child: Text(
          title.toUpperCase(),
        )
      ),
    );
  }
}
