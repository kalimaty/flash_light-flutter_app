import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';

class Torchight extends StatefulWidget {
  const Torchight({super.key});

  @override
  State<Torchight> createState() => _TorchightState();
}

class _TorchightState extends State<Torchight> {
  final bgColor = Color(0xff2C3333);
  final txtColor = Color(0xffE7F6F2);
  bool isActiv = false;
  var controller = TorchController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'نور احمد وبراء',
            style: TextStyle(color: txtColor, fontSize: 25),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          isActiv ? 'assets/lamp_on.png' : 'assets/lamp_of.png',
                          height: 200,
                          width: 200,
                          color: isActiv
                              ? null
                              : txtColor.withOpacity(
                                  0.2,
                                ),
                        ),
                        SizedBox(
                          height: size.height * 0.1,
                        ),
                        CircleAvatar(
                          maxRadius: 45,
                          minRadius: 30,
                          child: Transform.scale(
                            scale: 1.5,
                            child: IconButton(
                              onPressed: () {
                                controller.toggle();
                                isActiv = !isActiv;
                                setState(() {});
                              },
                              icon: Icon(
                                Icons.power_settings_new,
                                color: Colors.pink,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Text(
                'ادهم فيصل',
                style: TextStyle(
                    color: txtColor, fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * 0.06,
              )
            ],
          ),
        ),
      ),
    );
  }
}
