import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/data/remote_dummy_data_source/remote_dummy_data_source.dart';
import 'package:learn_flutter/domain/lockal_evilinsult_data_source.dart';
import 'package:learn_flutter/widgetes/Evilinsult_Data_widget.dart';

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  EvilinsultResponse? evilinsultResponse;

  Future<void> _getEvilinsul() async {
    final evilinsulSourse = EvilinsultDataSource(Dio());
    evilinsultResponse = await evilinsulSourse.getData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (evilinsultResponse != null)
              EvilinsultDataWidget(evilinsultResponse: evilinsultResponse!),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getEvilinsul,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
