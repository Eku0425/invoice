import 'package:flutter/material.dart';

import '../utils/globalvar.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
          title: Text(
            'Invoices',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            ...List.generate(
              DataList.length,
                  (index) => SizedBox(
                height: 105,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      selectIndex = index;
                    });
                    Navigator.of(context).pushNamed('/detail');
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        height: 0,
                      ),
                      ListTile(
                        title: Text('${DataList[index].data}'),
                        subtitle: Text('${DataList[index].name}'),
                        trailing: Text(
                          '${DataList[index].price}',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
