import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  double _heightsliderValue = 0.0;
  double _weightsliderValue = 0.0;
  String _selectedMajor = '';
  String _selectedLanguage = '';
  bool _agreeTerms = false;

  get decoration => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.purple,
                    radius: 80,
                    child: Text("Logo"),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "Register",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8),
                  height: 3,
                  width: 123,
                  color: Colors.blue,
                  child: const SizedBox(height: 12),
                ),
                SizedBox(
                  height: 12,
                ),
                const Text(
                  "Name",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 12,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  "Username",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 12),
                TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  "Password",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 12),
                TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  "Weight",
                  style: TextStyle(fontSize: 20),
                ),
                Slider(
                  value: _weightsliderValue,
                  min: 0,
                  max: 100,
                  divisions: 100,
                  label: _weightsliderValue.round().toString() + ' kg',
                  onChanged: (double value) {
                    setState(() {
                      _weightsliderValue = value;
                    });
                  },
                ),
                const Text(
                  "Height",
                  style: TextStyle(fontSize: 20),
                ),
                Slider(
                  value: _heightsliderValue,
                  min: 0,
                  max: 500,
                  divisions: 100,
                  label: _heightsliderValue.round().toString() + ' cm',
                  onChanged: (double value) {
                    setState(() {
                      _heightsliderValue = value;
                    });
                  },
                ),
                SizedBox(height: 16),
                Text(
                  "Major",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Wrap(
                  spacing: 8.0, // Add space between ChoiceChips
                  children: <Widget>[
                    ChoiceChip(
                      label: Text('Computer Science'),
                      selected: _selectedMajor == 'Computer Science',
                      onSelected: (selected) {
                        setState(() {
                          _selectedMajor = 'Computer Science';
                        });
                      },
                      selectedColor: Colors.green,
                      backgroundColor: Colors.blueAccent[100],
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                    ChoiceChip(
                      label: Text('Information Technology'),
                      selected: _selectedMajor == 'Information Technology',
                      onSelected: (selected) {
                        setState(() {
                          _selectedMajor = 'Information Technology';
                        });
                      },
                      selectedColor: Colors.green,
                      backgroundColor: Colors.blueAccent[100],
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Text(
                  "Language",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        Radio<String>(
                          value: 'Thai',
                          groupValue: _selectedLanguage,
                          onChanged: (value) {
                            setState(() {
                              _selectedLanguage = value!;
                            });
                          },
                        ),
                        Text(
                          'Thai',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Radio<String>(
                          value: 'English',
                          groupValue: _selectedLanguage,
                          onChanged: (value) {
                            setState(() {
                              _selectedLanguage = value!;
                            });
                          },
                        ),
                        Text(
                          'English',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Radio<String>(
                          value: 'Chinese',
                          groupValue: _selectedLanguage,
                          onChanged: (value) {
                            setState(() {
                              _selectedLanguage = value!;
                            });
                          },
                        ),
                        Text('Chinese', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    SizedBox(height: 5.0),
                    Row(
                      children: <Widget>[
                        Checkbox(
                          value: _agreeTerms,
                          onChanged: (value) {
                            setState(() {
                              _agreeTerms = value!;
                            });
                          },
                        ),
                        Text('Agree to Terms & Conditions',
                            style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ],
                ),

                // Additional widgets can be added here
                SizedBox(height: 20.0),
                Center(
                  child: Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue, // Background color
                        onPrimary: Colors.white, // Text color
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      ),
                      onPressed: () {},
                      child: Text('Register', style: TextStyle(fontSize: 30)),
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
