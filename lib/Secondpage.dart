import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:providerdemo/provider1.dart';
import 'package:providerdemo/provider2.dart';

class secondpage extends StatelessWidget {
  const secondpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final data = Provider.of<providerdemo>(context);

    print("page rebuild");
    return Scaffold(
      appBar: AppBar(
        title: Consumer<providerdemo2>(
            builder: (context, value, child) => Text(value.demo)),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Consumer<providerdemo>(
          builder: (context, value, child) => Text(
            (value.count.toString()),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<providerdemo>(context, listen: false).countfun();
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}


// Consumer(
//           builder: (context, value, child) => Text(
//             (Provider.of<providerdemo>(context).count.toString()),
//           ),
//         ),