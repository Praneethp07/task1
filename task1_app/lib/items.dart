import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1_app/models/userdetails.dart';
import 'package:task1_app/providers/add_users_providers.dart';
import "models/userdetails.dart";

class ItemCard extends StatefulWidget {
  Users users;

  ItemCard({required this.users, required this.count});
  Function(int) count;
  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  bool buttonPressed = false;
  String? buttonText;
  Color buttonColor = const Color(0xffff0000);
  List<Users> addedUsersList = [];
  List<Users> newUserList = [];
  List<int> addedIndex = [];
  // int _selectedIndex = -1;

  @override
  void initState() {
    super.initState();
    buttonText = Provider.of<AddUsers>(context, listen: false).buttonText;
    buttonColor = Provider.of<AddUsers>(context, listen: false).buttonColor;
    newUserList = Provider.of<AddUsers>(context, listen: false).newUserList;
  }

  // void handleButtonClick(Users user) {
  //   if (newUserList[user.index].selected) {
  //     addedUsersList.remove(newUserList[user.index]);
  //     newUserList[user.index].selected = false;
  //     buttonText = 'Add';
  //     buttonColor = const Color(0xffff0000);
  //   } else {
  //     addedUsersList.add(newUserList[user.index]);
  //     newUserList[user.index].selected = true;
  //     buttonText = 'Added';
  //     buttonColor = Colors.grey.shade800;
  //   }
  //   setState(() {
  //     _selectedIndex = user.index;
  //   });
  // }

  void handleButtonClick(Users user) {
    setState(() {
      if (!user.selected) {
        user.selected = true;
        buttonText = 'Add';
        buttonColor = const Color(0xffff0000);
        addedUsersList.remove(user);
      } else {
        user.selected = false;
        buttonText = 'Added';
        buttonColor = Colors.grey.shade800;
        addedUsersList.add(user);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // int indexVal = newUserList[widget.cardIndex].index;
    return Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8))),
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: Consumer<AddUsers>(
          builder: (context, provider, child) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    widget.users.imgurl,
                    height: 50,
                    width: 40,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    widget.users.name,
                    style: const TextStyle(fontSize: 16.0),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: widget.users.selected
                        ? Colors.grey.shade800
                        : const Color(0xffff0000), // sets the button color
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10), // Set the button's border radius
                    ),
                  ),
                  onPressed: () {
                    handleButtonClick(widget.users);
                    print("clicked");
                    (buttonText == "Add")? 
                    widget.count(1)
                        : widget.count(-1);
                  },
                  child: Text((widget.users.selected) ? "Added" : "Add"),
                ),
              ],
            );
          },
        ));
  }
}
