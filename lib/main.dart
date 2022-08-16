import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: ReshId(),
  ));
}

class ReshId extends StatefulWidget {
  const ReshId({Key? key}) : super(key: key);

  @override
  State<ReshId> createState() => _ReshIdState();
}

class _ReshIdState extends State<ReshId> {
  int age = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(53, 158, 158, 158),
        appBar: AppBar(
            title: const Text(
              'ReshId',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            backgroundColor: const Color.fromARGB(149, 255, 64, 128)),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              age += 1;
            });
          },
          backgroundColor: Colors.pink[800],
          child: const Icon(
            Icons.add,
            size: 20,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 40, 30, 0),
          child: Column(
            children: <Widget>[
              const CircleAvatar(
                //backgroundImage: NetworkImage(
                //    "https://m.media-amazon.com/images/M/MV5BMzU3YzgxYmYtMWY2MC00YjA1LTlmMzUtMDA3YjU5YmVhOGY5XkEyXkFqcGdeQXVyMjMyMzI4MzY@._V1_FMjpg_UX278_.jpg"),
                radius: 80,
                backgroundImage: AssetImage('assets/Images/avatar.png'),
              ),
              Divider(height: 60, color: Colors.pink[900]),
              Row(
                children: [
                  Text(
                    'NAME :',
                    style: TextStyle(
                        color: Colors.grey[700],
                        letterSpacing: 2,
                        fontSize: 20),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'RESHMA',
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.pink[400],
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2),
                  )
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    'AGE :',
                    style: TextStyle(
                        color: Colors.grey[700],
                        letterSpacing: 2,
                        fontSize: 20),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '$age',
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.pink[400],
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2),
                  )
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    'ROLE :',
                    style: TextStyle(
                        color: Colors.grey[700],
                        letterSpacing: 2,
                        fontSize: 20),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: Text(
                      'SoftwareEngineer',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.pink[400],
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    'COMPANY :',
                    style: TextStyle(
                        color: Colors.grey[700],
                        letterSpacing: 2,
                        fontSize: 20),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Gislen Software',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.pink[400],
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2),
                  )
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Icon(Icons.mail, color: Colors.pink[200], size: 25),
                  const SizedBox(width: 10),
                  Text(
                    'Reshmas@gislen.com',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.pink[400],
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
