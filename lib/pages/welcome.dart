import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                //color: Colors.amber,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 35,
                    ),
                    const Text(
                      'welcome',
                      style: TextStyle(fontSize: 33),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Image.asset(
                      "images/mainWlecom.jpeg",
                      //'https://tse4.mm.bing.net/th/id/OIP.uLa-4KHaO_NdYi9-RuDPFwAAAA?rs=1&pid=ImgDetMain&o=7&rm=3',
                      width: 288,
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/login");
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all(Colors.purple),
                          padding: WidgetStateProperty.all(
                            const EdgeInsets.symmetric(
                              horizontal: 79,
                              vertical: 10,
                            ),
                          ),
                          shape: WidgetStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(27)))),
                      child: const Text(
                        'login',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/signup");
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all(Colors.purple),
                          padding: WidgetStateProperty.all(
                            const EdgeInsets.symmetric(
                              horizontal: 79,
                              vertical: 10,
                            ),
                          ),
                          shape: WidgetStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(27)))),
                      child: Text(
                        'SIGNUP',
                        style: TextStyle(fontSize: 17, color: Colors.grey[850]),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  left: 0,
                  child: Image.asset(
                    "images/top.jpg",
                    // 'https://tse2.mm.bing.net/th/id/OIP.MQ4Cc5zD7JNVkJL0aE5xNgAAAA?rs=1&pid=ImgDetMain&o=7&rm=3',
                    width: 111,
                  )),
              Positioned(
                  bottom: 0,
                  child: Image.asset(
                    "images/bottom.jpg",
                    //'https://tse3.mm.bing.net/th/id/OIP.fx5d5RXNnAIb6pvBqIUD6wHaER?rs=1&pid=ImgDetMain&o=7&rm=3',
                    width: 111,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
