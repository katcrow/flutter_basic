import 'package:flutter/material.dart';
import 'package:flutter_bootcamp/screens/randomizer_page.dart';
import 'package:flutter_bootcamp/widgets/range_selector_form.dart';

class RangeSelectorPage extends StatefulWidget {
  const RangeSelectorPage({super.key});

  @override
  State<RangeSelectorPage> createState() => _RangeSelectorPageState();
}

class _RangeSelectorPageState extends State<RangeSelectorPage> {
  final formKey = GlobalKey<FormState>();
  int _min = 0;
  int _max = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Range'),
        centerTitle: true,
      ),
      body: RangeSelectorForm(
        formKey: formKey,
        minIntValueSetter: (value) => _min = value,
        maxIntValueSetter: (value) => _max = value,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // todo : 폼 유효성 검사 validate
          if (formKey.currentState?.validate() == true) {
            formKey.currentState!.save();

            print(_min.toString());
            print(_max.toString());
            // todo : Navigate to the generator page
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => RandomizerPage(min: _min, max: _max),
            ));
          }
          ;
        },
        tooltip: 'Increment',
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
