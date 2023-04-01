import 'package:flutter/material.dart';

class ItemCard extends StatefulWidget {
  String name;
  String imgurl;
  String email;
  int cardIndex;
  bool alreadyAdded;
  ItemCard(
      {required this.selectedIndex,
      required this.countAdded,
      required this.name,
      required this.imgurl,
      required this.email,
      required this.cardIndex,
      this.alreadyAdded = false});
  Function(int) countAdded;
  Function(int) selectedIndex;
  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard>
    with AutomaticKeepAliveClientMixin {
  bool get wantKeepAlive => true;
  String btnText = "Add";
  Color _onAndBeforePressed = const Color(0xFFFF0000);
  int added = 0;
  var _selectedUserIndex = 0;

  @override
  initState() {
    super.initState();
    if (widget.alreadyAdded == true) {
      _onAndBeforePressed = Colors.grey.shade800;
      btnText = "Added";
    }
  }

  void addFriend() {
    // print("index:$index");
    if (btnText == "Add") {
      btnText = 'Added';
      _onAndBeforePressed = Colors.grey.shade800;
    } else {
      btnText = 'Add';
      _onAndBeforePressed = const Color(0xFFFF0000);
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedUserIndex = index;
      widget.selectedIndex(_selectedUserIndex);
    });
  }

  void SendFriendRequest() {
    setState(() {
      addFriend();
    });
    (btnText == 'Add') ? widget.countAdded(-1) : widget.countAdded(1);
  }

  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width * 0.6;
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8))),
      margin: EdgeInsets.symmetric(vertical: 8),
      child: 
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              widget.imgurl,
              height: 50,
              width: 40,
              fit: BoxFit.cover,
            ),
            // child: Image.asset(
            //   'assets/kakashi.jpg',
            //   fit: BoxFit.cover,
            //   height: 60,
            //   width: 50,
            // ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              widget.name,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: _onAndBeforePressed, // sets the button color
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(10), // Set the button's border radius
              ),
            ),
            onPressed: () {
              SendFriendRequest();
              _onItemTapped(widget.cardIndex);
              print('index ${widget.cardIndex}');
            },
            child: Text('$btnText'),
          )
        ],
      ),
    );
  }
}
