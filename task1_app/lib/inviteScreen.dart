import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:task1_app/providers/add_users_providers.dart';

class InviteScreen extends StatefulWidget {
  const InviteScreen({super.key});

  @override
  State<InviteScreen> createState() => _InviteScreenState();
}

class _InviteScreenState extends State<InviteScreen> {
  double _height = 300;
  double _width = 500;
  BorderRadius _borderRadius = const BorderRadius.all(Radius.circular(20));
  Color _color = const Color.fromARGB(255, 223, 221, 221);

  @override
  Widget build(BuildContext context) {
    return Consumer<AddUsers>(
      builder: (context, provider, child) {
        return AnimatedContainer(
          duration: const Duration(seconds: 1),
          height: _height,
          width: _width,
          margin: const EdgeInsets.symmetric(horizontal: 25),
          curve: Curves.fastOutSlowIn,
          decoration: BoxDecoration(
            color: _color,
            border: Border.all(width: 0.1),
            borderRadius: _borderRadius,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade600, spreadRadius: 1, blurRadius: 15)
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: GestureDetector(
                  child: const Icon(
                    Icons.arrow_back,
                    size: 30,
                  ),
                  onTap: () {
                    provider.closeInviteStack();
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Invite",
                    style: TextStyle(fontSize: 30),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Container(
                        width: 70,
                        height: 25,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.0),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(6.0)),
                        ),
                        child: const Center(child: Text('Student'))),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Container(
                        width: 70,
                        height: 25,
                        // color: Colors.grey,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 1.0,
                              color: const Color.fromRGBO(255, 0, 0, 0.3)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(6.0)),
                        ),
                        child: const Center(
                            child: Text(
                          'Teacher',
                          style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.3)),
                        ))),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(30, 0, 25, 0),
                // width: 360,
                child: const TextField(
                  style: TextStyle(fontSize: 15.0),
                  // controller: _controller,
                  decoration: InputDecoration(
                    hintText: 'Enter Mail-ID',
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              // const SizedBox(
              //   height: 10.0,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                    width: 135,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromRGBO(255, 0, 0, 1)),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0)),
                            )),
                        onPressed: () async {
                          // addUsertoGroup(groupId, _controller.text);
                          // Navigator.pop(
                          //     context, [_controller.text]);
                        },
                        child: const Text(
                          'invite',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18.43),
                        )),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
