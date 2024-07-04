import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<String> items = ['January', 'February', 'March', 'April','March','June','July'];

  @override
  Widget build(BuildContext context) {
    final title = '2_screens App';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${items[index]}'),
              // When the child is tapped, show a snackbar.
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyDetails(items[index])),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
class MyDetails extends StatelessWidget {
  final String month;
  MyDetails(this.month);

  @override
  Widget build(BuildContext context) {
    final title = '2on Screen Page';

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Text('You selected $month'),
    );
  }
}