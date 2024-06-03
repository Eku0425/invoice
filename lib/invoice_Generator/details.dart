import 'package:flutter/material.dart';

import '../utils/globalvar.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
          title: Text(
            '${DataList[selectIndex].data}',
            style: TextStyle(color: Colors.white),
          ),
          leading: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              height: 68,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Customer',
                    style: TextStyle(fontSize: 25, color: Colors.black87),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  SizedBox(
                    width: 162,
                    child: Text(
                      DataList[selectIndex].name,
                      textAlign: TextAlign.center,
                      style:
                      const TextStyle(fontSize: 25, color: Colors.black45),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // margin: const EdgeInsets.symmetric(horizontal: 30),
              child: const Divider(
                endIndent: 20,
                indent: 10,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Invoice Iteams',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ...List.generate(
              ItemList.length,
                  (index) => ListTile(
                title: Text('${ItemList[index].txt}'),
                trailing: Text('${ItemList[index].txtPrice}'),
              ),
            ),
            ListTile(
              title: const Text(
                'Total',
                style: TextStyle(fontSize: 30, color: Colors.black45),
              ),
              trailing: Text(
                '${DataList[selectIndex].price}',
                style: const TextStyle(fontSize: 30, color: Colors.black45),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: const Divider(),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          backgroundColor: Colors.blue,
          onPressed: () {
            Navigator.of(context).pushNamed('/pdf');
          },
          child: const Icon(Icons.picture_as_pdf),
        ),
      ),
    );
  }
}