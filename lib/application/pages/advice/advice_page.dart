import 'package:clean_architecture_advisor_app/application/core/services/theme_service.dart';
import 'package:clean_architecture_advisor_app/application/pages/advice/widgets/advice_field.dart';
import 'package:clean_architecture_advisor_app/application/pages/advice/widgets/custom_button.dart';
import 'package:clean_architecture_advisor_app/application/pages/advice/widgets/error_message.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AdvicePage extends StatelessWidget {
  const AdvicePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Advice Page",
          style: Theme.of(context).textTheme.displayLarge,
        ),
        centerTitle: true,
        actions: [
          Switch(
            value:
                Provider.of<ThemeService>(context, listen: true).isDarkModeOn,
            onChanged: (_) {
              Provider.of<ThemeService>(context, listen: false).toggleTheme();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          children: [
            Expanded(
              child: Center(
                  child: ErrorMessage(message: "Oops, something gone wrong!")
                  // AdviceField(advice: "Your day will be good!"),
                  // CircularProgressIndicator(
                  //   color: themeData.colorScheme.secondary,
                  // ),
                  // Text(
                  //   "Your advice is waiting for you!",
                  //   style: themeData.textTheme.displayLarge,
                  // ),
                  ),
            ),
            const SizedBox(
              height: 200,
              child: Center(
                child: CustomButton(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
