import 'dart:ui';
import 'package:task1_app/models/userdetails.dart';
import 'items.dart';
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
              IgnorePointer(
                ignoring: provider.showStack,
                child: Column(
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
                            child: const Text(
                              'Add people',
                              style: TextStyle(fontSize: 25, color: Colors.red),
                            ),
                            onTap: () {
                              FocusManager.instance.primaryFocus?.unfocus();
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 24, 0),
                          child: GestureDetector(
                            child: const Text(
                              "Invite +",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                              ),
                            ),
                            onTap: () {
                              provider.showInviteStack();
                              FocusManager.instance.primaryFocus?.unfocus();
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
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      padding: EdgeInsets.zero,
                      child: TextField(
                        onChanged: (query) {
                          final suggestions = provider.users.where((member) {
                            final memberName = member.name.toLowerCase();
                            final input = query.toLowerCase();

                            return memberName.contains(input);
                          }).toList();

                          setState(() => provider.newUserList = suggestions);
                        },
                        // controller: _controller,
                        decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.search),
                          hintText: ' Search for Existing people',
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: ListView.builder(
                          padding: const EdgeInsets.symmetric(horizontal: 27.0),
                          itemCount: provider.newUserList.length,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return ItemCard(
                              count: (p0) {
                                provider.addedCount += p0;
                                print(provider.addedCount);
                                setState(() {});
                              },
                              users: provider.newUserList[index],
                            );
                          }),
                    ),
                  ],
                ),
              ),
              (provider.showStack)
                  ? Positioned.fill(
                      child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                          child: Center(child: inviteStack)),
                    )
                  : const Text(""),
            ],
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: !provider.showStack
              ? SizedBox(
                  width: 154,
                  height: 40,
                  child: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: const Color(0xFFFF0000),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Text(
                      'Confirm [${provider.addedCount}]',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                )
              : null,
        );
      }),
    );
  }
}
