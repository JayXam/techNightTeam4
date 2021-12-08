import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'customer.dart';

class CustomerDetail extends StatelessWidget {
  Customer customer;
  CustomerDetail(this.customer);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Customer Detail'),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Table(
          border: TableBorder.all(),
          columnWidths: const <int, TableColumnWidth>{
            0: FlexColumnWidth(),
            1: FlexColumnWidth(),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: <TableRow>[
            TableRow(
              children: <Widget> [
                Container(
                  width: 50,
                  height: 50,
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.centerLeft,
                  child: Text('First name:'),
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Text(customer.firstName),
                  ),
                ),
              ]
            ),
            TableRow(
                children: <Widget> [
                  Container(
                    width: 50,
                    height: 50,
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.centerLeft,
                    child: Text('Last name:'),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Text(customer.lastName),
                    ),
                  ),
                ]
            ),
            TableRow(
                children: <Widget> [
                  Container(
                    width: 50,
                    height: 50,
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.centerLeft,
                    child: Text('Email:'),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Text(customer.email),
                    ),
                  ),
                ]
            ),
            TableRow(
                children: <Widget> [
                  Container(
                    width: 50,
                    height: 50,
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.centerLeft,
                    child: Text('Contact no:'),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Text(customer.contactNo),
                    ),
                  ),
                ]
            )
          ],
        ),
      ),
    );
  }
}
