import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'login.dart';


void main() {
  runApp(AquaBloomApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/home': (context) => AquaBloomApp(),
        '/login': (context) => loginPage(),
        '/signup': (context) => SignupPage(),
        '/choose': (context) => ChoosePlantsPage(),
        '/addplant': (context) => AddNewPlantPage(),
        '/Howtouse': (context) => howtouse(),


      },
    );
  }
}


class AquaBloomApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aqua Bloom',
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/assets/white.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(
                      width: 85,
                      height: 85,
                      child: Image.asset('lib/assets/logo.png'),
                    ),
                    SizedBox(width: 8),
                    Stack(
                      children: <Widget>[
                        Text(
                          'Aqua Bloom',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 2
                              ..color = Colors.black,
                          ),
                        ),
                        Text(
                          'Aqua Bloom',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFAA7BA9),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  'One Drop at a Time - Aqua Bloom',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context,'/login');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFB0D8A6), // Button background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.black, // Text color
                    ),
                  ),
                ),
                SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Signup');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFB0D8A6), // Button background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Text(
                    'Signup',
                    style: TextStyle(
                      color: Colors.black, // Text color
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: 172,
                  height: 63,
                  decoration: BoxDecoration(
                    color: Color(0xFFAA7BA9),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextButton(
                    onPressed: () {
                    },
                    child: Text(
                      'Description',
                      style: TextStyle(
                        color: Colors.white, // Text color
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget buttonContainer(BuildContext context, Color bgColor, String text, Color textColor, Widget targetPage) {
  return Container(
    width: 172,
    height: 63,
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(25),
    ),
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => targetPage),
        );
      },
      style: ElevatedButton.styleFrom(
        //primary: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor, // Text color
        ),
      ),
    ),
  );
}

class WidgetUtils {
  static Widget buildTextField(BuildContext context, {required String hintText, required String icon, bool obscureText = false}) {
    return TextField(
      obscureText: obscureText,
      style: GoogleFonts.lato(color: Colors.white, fontSize: 18),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.lato(color: Colors.white54),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(
            icon,
            color: Colors.white,
            width: 20,
            height: 20,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(color: Colors.white),
        ),
        filled: true,
        fillColor: Colors.white.withOpacity(0.1),
      ),
    );
  }
}

class loginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('lib/assets/login.png', fit: BoxFit.cover),
          Container(
            color: Colors.black.withOpacity(0.3),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome back!',
                    style: GoogleFonts.lato(
                      fontSize: 32, // Added fontSize argument
                      color: Colors.white,
                      fontWeight: FontWeight.bold, // Added fontWeight parameter
                    ),
                  ),
                  SizedBox(height: 20),
                  WidgetUtils.buildTextField(
                    context,
                    hintText: 'Username',
                    icon: 'lib/assets/user.svg',
                  ),
                  SizedBox(height: 20),
                  WidgetUtils.buildTextField(
                    context,
                    hintText: 'Password',
                    icon: 'lib/assets/lock1.svg',
                    obscureText: true,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AquaBloomApp()), // Replace HomePage with the desired home page
                      );
                    },
                    child: Text('Login'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SignupPage extends StatelessWidget {
  get textStyle => null;


  Widget _buildInstructionStep(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: <Widget>[
          Icon(Icons.check, color: Colors.white),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class howtouse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'How to use?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            _buildInstructionStep('Signup to create an account.'),
            _buildInstructionStep('Login to your account.'),
            _buildInstructionStep('Add your images and names of your plants.'),
            _buildInstructionStep('Check the water status of your plants.'),
            _buildInstructionStep('Start or stop water in your plants.'),
            _buildInstructionStep('Emergency stop if there is water overflow.'),
            SizedBox(height: 40),
            Builder(
              builder: (context) => ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => loginPage()), // Replace NextPage with the actual next page widget
                  );
                },
                child: Text('Proceed'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInstructionStep(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: <Widget>[
          Icon(Icons.check, color: Colors.white),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}

class ResetPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reset Password'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                hintText: 'E-mail address',
                icon: Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Change password',
                icon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Confirm password',
                icon: Icon(Icons.lock_outline),
              ),
              obscureText: true,
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
              },
              child: Text('Confirm'),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class ChoosePlantsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose your plants'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton.icon(
              onPressed: () {
                // Add logic to handle adding a new plant
              },
              icon: Icon(Icons.add_circle_outline),
              label: Text('Add new plant'),
            ),
            ListTile(
              leading: Image.asset('assets/images/mint.webp'), // Replace with actual image path
              title: Text('1: Mint'),
            ),
            ListTile(
              leading: Image.asset('assets/images/bb.webp'), // Replace with actual image path
              title: Text('2: Coleus'),
            ),
          ],
        ),
      ),
    );
  }
}

class AddNewPlantPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('lib/assets/logo.png'), // Replace with your logo asset
            SizedBox(height: 20),
            Text(
              'Add new Plant',
              style: GoogleFonts.openSans(
                textStyle: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                // TODO: Implement camera functionality
              },
              child: Icon(
                Icons.camera_alt,
                size: 50,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Write the plant name', border: OutlineInputBorder(),),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement confirm image functionality
              },
              child: Text('Confirm image'),
            ),
          ],
        ),
      ),
    );
  }
}

class PlantStatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plant Status'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/water_drop_logo.png'),
            SizedBox(height: 20),
            Text(
              'Current Plant status:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(
              value: 0.95,
              backgroundColor: Colors.lightBlueAccent,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
            SizedBox(height: 10),
            Text(
              '95%',
              style: TextStyle(color: Colors.blue, fontSize: 50, fontWeight: FontWeight.bold),
            ),
            Text(
              'Water level is in safe position! :)',
              style: TextStyle(color: Colors.green, fontSize: 18),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Add functionality for Open Water button
              },
              child: Text('Open Water'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
              },
              child: Text('Stop Water'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class safeposition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/water_drop_logo.png'), // Replace with your asset image
              Text(
                'Current Plant status:',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              CircularProgressIndicator(
                value: 0.95,
                backgroundColor: Colors.lightBlueAccent,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
              ),
              SizedBox(height: 10),
              Text(
                '95%',
                style: TextStyle(color: Colors.blue, fontSize: 50, fontWeight: FontWeight.bold),
              ),
              Text('Water level is in safe position! :)',
                style: TextStyle(color: Colors.green, fontSize: 16),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                },
                child: Text('Open Water'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Add functionality for Stop Water button
                },
                child: Text('Stop Water'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
