import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1_app/inviteScreen.dart';
import 'package:task1_app/main.dart';
import 'providers/add_users_providers.dart';

class AddMembers extends StatefulWidget {
  const AddMembers({super.key});

  @override
  State<AddMembers> createState() => _AddMembersState();
}

class _AddMembersState extends State<AddMembers> {
  InviteScreen inviteStack = const InviteScreen();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AddUsers>(
          create: (context) => AddUsers(),
        ),
      ],
      child: Consumer<AddUsers>(builder: (context, provider, child) {
        return Scaffold(
          body: Stack(
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
                        child: GestureDetector(
                          child: Text(
                            'Add people',
                            style: TextStyle(fontSize: 25, color: Colors.red),
                          ),
                          onTap: () {},
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 24, 0),
                        child: GestureDetector(
                          child: Text(
                            "Invite +",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                            ),
                          ),
                          onTap: () {
                            provider.showInviteStack();
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0))),
                    width: 360,
                    child: TextField(
                      onChanged: (value) {
                        if (value == "") {
                          provider.newUserList = provider.users;
                        } else {
                          provider.newUserList = [];
                          provider.users.forEach((element) {
                            if (element.name.toLowerCase().startsWith(value) ||
                                element.name.startsWith(value)) {
                              provider.newUserList.add(element);
                            }
                          });
                        }
                        setState(() {});
                      },
                      // controller: _controller,
                      decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.search),
                        hintText: ' Search for Existing people',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
              (provider.showStack)
                  ? Positioned.fill(
                      child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                          child: Center(child: inviteStack)),
                    )
                  : Container(
                      child: Text("test"),
                    ),
            ],
          ),
        );
      }),
    );
  }
}
