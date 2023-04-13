import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuyButtonWidget extends StatefulWidget {
  const BuyButtonWidget({Key? key}) : super(key: key);

  @override
  _BuyButtonWidgetState createState() => _BuyButtonWidgetState();
}

class _BuyButtonWidgetState extends State<BuyButtonWidget> {
  String _message = "";

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
              MaterialStateProperty.all<Color>(Colors.red.shade800)),
          child: Row(
            children: [
              Icon(Icons.shopping_cart),
              SizedBox(width: 5),
              Text("Commander"),
            ],
          ),
          onPressed: () {
            print('Commander une pizza');
            setState(() {
              _message = "Commande ajoutée";
            });
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(_message),
                duration: Duration(seconds: 2),
              ),
            );
            Future.delayed(Duration(seconds: 3), () {
              setState(() {
                _message = "";
              });
            });
          },
        ),
      ],
    );
  }
}
