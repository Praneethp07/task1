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
  @override
  Widget build(BuildContext context) {
    return Consumer<AddUsers>(
      builder: (context, provider, child) {
        return Container(
          height: 300.0,
          width: 500.0,
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 25,
                  ),
                  GestureDetector(
                    child: Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                    onTap: () {
                      provider.closeInviteStack();
                    },
                  ),
                  const SizedBox(
                    width: 65,
                  ),
                  const Text(
                    "Invite",
                    style: TextStyle(fontSize: 30),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Container(
                        width: 70,
                        height: 25,
                        // color: Colors.grey,
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
                margin: EdgeInsets.fromLTRB(30, 0, 25, 0),
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.0,
                    ),
                    borderRadius:
                        const BorderRadius.all(Radius.circular(10.0))),
                width: 360,
                child: TextField(
                  // controller: _controller,
                  decoration: const InputDecoration(
                    hintText: ' Enter Mail-ID',
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
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
                                    borderRadius:
                                        BorderRadius.circular(12.0)))),
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
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
