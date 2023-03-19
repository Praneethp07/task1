import 'package:flutter/material.dart';
import 'details/userdetails.dart';

class ItemCard extends StatefulWidget {
  String name;
  String imgurl;
  ItemCard({required this.countAdded, required this.name, required this.imgurl});
  Function(int) countAdded;
  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  String btnText = "Add";
  Color _onAndBeforePressed = const Color(0xFFFF0000);
  int count = 0;
  int added = 0;
  void addFriend() {
    if (count % 2 == 0) {
      btnText = 'Add';
      _onAndBeforePressed = const Color(0xFFFF0000);
    } else {
      btnText = 'Added';
      _onAndBeforePressed = Colors.grey.shade800;
    }
  }

  void SendFriendRequest() {
    count++;
    setState(() {
      addFriend();
      (btnText == 'Add') ? widget.countAdded(-1) : widget.countAdded(1);
    });
    
  }

  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width * 0.6;
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8))),
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Row(
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
            onPressed: SendFriendRequest,
            child: Text('$btnText'),
          )
        ],
      ),
    );
  }
}
