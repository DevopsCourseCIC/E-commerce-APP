import 'package:flutter/material.dart';
import 'Home.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(213, 194, 182, 1),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 20.0,
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  icon: const Icon(Icons.arrow_back_ios_new),
                  iconSize: 20.0,
                  color: Colors.black,
                ),
              ),
            ),
            const Image(
              alignment: Alignment.center,
              height: 500.0,
              image: AssetImage("assets/product.png"),
            ),
            Container(
              child: const Text(
                "Chair",
                // textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color.fromARGB(255, 28, 28, 28),
                  fontSize: 13.0,
                ),
              ),
            ),
            const Text(
              "Bumb Chair\nType: Modern\nMaterial: wood",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 20.0,
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                    );
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 107, 71, 48),
                    ),
                    fixedSize: MaterialStatePropertyAll(
                      Size(242, 45),
                    ),
                    elevation: MaterialStatePropertyAll(0),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Add to cart',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
