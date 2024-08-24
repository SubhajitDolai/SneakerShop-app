import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop_app/models/cart.dart';
import 'package:sneaker_shop_app/models/shoe.dart';

class CartItem extends StatefulWidget {
  final Shoe shoe;
  const CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  // remove item from cart
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slidable(
          endActionPane: ActionPane(
            motion: const StretchMotion(),
            children: [
              SlidableAction(
                onPressed: (context) {
                  removeItemFromCart();
                },
                icon: Icons.delete,
                backgroundColor: Colors.red.shade200,
                borderRadius: BorderRadius.circular(12.0),
              )
            ],
          ),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12)),
            // margin: const EdgeInsets.only(bottom: 10),
            child: ListTile(
              leading: Image.asset(widget.shoe.imagePath),
              title: Text(widget.shoe.name),
              subtitle: Text(
                '\$${widget.shoe.price}',
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
