import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1_app/providers/add_users_providers.dart';

class ItemCard extends StatefulWidget {

  int cardIndex;
  ItemCard({
    required this.cardIndex,
  });

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  String btnText = "Add";
  Color onAndBeforePressed = const Color(0xFFFF0000);

  @override
  Widget build(BuildContext context) {
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
                    provider.users[widget.cardIndex].imgurl,
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
                    provider.users[widget.cardIndex].name,
                    style: const TextStyle(fontSize: 16.0),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        onAndBeforePressed, // sets the button color
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10), // Set the button's border radius
                    ),
                  ),
                  onPressed: () {},
                  child: Text(btnText),
                )
              ],
            );
          },
        ));
  }
}
