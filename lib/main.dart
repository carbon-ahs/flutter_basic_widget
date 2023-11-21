import 'package:flutter/material.dart';
import 'ahsan_theme.dart';
import 'home.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = AhsanTheme.darkAh();

    return MaterialApp(
      theme: theme,
      title: 'Fooderlich',
      // 4
      home: Home(),
    );
  }
}
      
      
      
      
      
      
      
      
      
      
      
      
      
      /* Scaffold(
        appBar: AppBar(
          title: Text(
            'Fooderlich',
            style: theme.textTheme.displaySmall,
          ),
        ),
        body: Center(
          child: Text(
            'Let\'s get cooking 👩‍🍳',
            style: theme.textTheme.displayLarge,
          ),
        ),
      ),
    );
  }
}
*/