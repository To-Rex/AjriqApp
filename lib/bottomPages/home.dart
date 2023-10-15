import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hi there!',
          style: TextStyle(color: Colors.black, fontSize: w * 0.05),
        ),
      ),
      body: SizedBox(
        child: ListView(
          children: [
            Container(
                height: h * 0.4,
                width: w,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black12.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                      height: h * 0.3,
                      width: w,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        image: DecorationImage(
                          image: AssetImage('assets/images/img.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: w * 0.9,
                      child: Text(
                        'Welcome to Ajriq',
                        style: TextStyle(
                          fontSize: w * 0.04,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )

                  ],
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 5,
        splashColor: Colors.green,
        hoverColor: Colors.green,
        backgroundColor: Colors.grey[200],
        onPressed: () {},
        child: HeroIcon(
          HeroIcons.chatBubbleLeftRight,
          color: Colors.green,
          size: w * 0.06,
        ),
      ),
    );
  }
}
