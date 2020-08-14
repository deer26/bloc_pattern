import 'package:bloc_patter/blocs/cart_bloc.dart';
import 'package:bloc_patter/model/cart.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sepetim"),
      ),
      body: StreamBuilder(
        initialData: cartBloc.getAllCart(),
        stream: cartBloc.getStream,
        builder: (context, snapshot) {
          if (snapshot.data.length == 0) {
            return Center(
              child: Text("Sepetiniz boş"),
            );
          }
          List<Cart> item = snapshot.data;
          return ListView.builder(
            itemCount: item.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(item[index].product.name),
              subtitle: Text(item[index].quantity.toString()),
              trailing: IconButton(
                icon: Icon(Icons.remove_shopping_cart),
                onPressed: () => cartBloc.removeFromCart(
                  item[index],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
