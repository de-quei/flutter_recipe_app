import 'package:flutter/material.dart';
import 'package:flutter_recipe_app_course/core/presentation/components/big_button.dart';
import 'package:flutter_recipe_app_course/core/presentation/components/filter_button.dart';
import 'package:flutter_recipe_app_course/core/presentation/components/input_field.dart';
import 'package:flutter_recipe_app_course/core/presentation/components/medium_button.dart';
import 'package:flutter_recipe_app_course/core/presentation/components/rating_button.dart';
import 'package:flutter_recipe_app_course/core/presentation/components/small_button.dart';
import 'package:flutter_recipe_app_course/core/presentation/components/two_tap.dart';
import 'package:flutter_recipe_app_course/core/presentation/dialogs/rating_dialog.dart';
import 'package:flutter_recipe_app_course/core/routing/router.dart';
import 'package:flutter_recipe_app_course/ui/text_styles.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(),
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Components',
          style: TextStyles.largeTextBold,
        ),
      ),
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) {
                  return RatingDialog(
                    title: 'Rate recipe',
                    score: 3,
                    actionName: 'Send',
                    onChange: (score) {
                      print(score);
                    },
                  );
                },
              );
            },
            child: const Text('RatingDialog'),
          ),
          TwoTap(
            labels: const ['label 1', 'label 2'],
            selectedIndex: 1,
            onChange: (int index) {
              print('TwoTab: $index');
            },
          ),
          const RatingButton('5'),
          const RatingButton('5', isSelected: true),
          const FilterButton('Text'),
          const FilterButton(
            'Text',
            isSelected: true,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: BigButton(
              text: 'Big Button',
              onPressed: () {
                print('big button');
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MediumButton(
              text: 'Medium',
              onPressed: () {
                print('big button');
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SmallButton(
              text: 'Small Button',
              onPressed: () {
                print('big button');
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: InputField(label: 'Label', placeHolder: 'PlaceHolder'),
          ),
        ],
      ),
    );
  }
}
