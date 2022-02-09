import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String result = "0"; // overall outcome of the calculation

  final _rightSpacing = 20.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Expanded(
            flex: 1,
            child: SizedBox(
              height: 50,
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, _rightSpacing, 0),
              child: Column(
                children: [
                  Text(
                    result,
                    maxLines: 1,
                    style: const TextStyle(
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                      fontSize: 50.0,
                    ),
                  ),
                  // This sized box is put to give some spacing between widgets
                  const SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.fromLTRB(_rightSpacing, 0, _rightSpacing, 0),
              child: Wrap(
                runSpacing: _rightSpacing,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            result == "0" ? result = "7" : result += "7";
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 5.0,
                          padding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 8.0,
                          ),
                        ),
                        child: Text(
                          "7",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            result == "0" ? result = "8" : result += "8";
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 5.0,
                          padding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 8.0,
                          ),
                        ),
                        child: Text(
                          "8",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            result == "0" ? result = "9" : result += "9";
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 5.0,
                          padding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 8.0,
                          ),
                        ),
                        child: Text(
                          "9",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (result != "0") {
                              result += " / ";
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 5.0,
                          padding: const EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 6.0,
                          ),
                        ),
                        child: Text(
                          "/",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[900],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            result == "0" ? result = "4" : result += "4";
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 5.0,
                          padding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 8.0,
                          ),
                        ),
                        child: Text(
                          "4",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            result == "0" ? result = "5" : result += "5";
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 5.0,
                          padding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 8.0,
                          ),
                        ),
                        child: Text(
                          "5",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            result == "0" ? result = "6" : result += "6";
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 5.0,
                          padding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 8.0,
                          ),
                        ),
                        child: Text(
                          "6",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (result != "0") {
                              result += " x ";
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 5.0,
                          padding: const EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 6.0,
                          ),
                        ),
                        child: Text(
                          "x",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[900],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            result == "0" ? result = "1" : result += "1";
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 5.0,
                          padding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 8.0,
                          ),
                        ),
                        child: Text(
                          "1",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            result == "0" ? result = "2" : result += "2";
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 5.0,
                          padding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 8.0,
                          ),
                        ),
                        child: Text(
                          "2",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            result == "0" ? result = "3" : result += "3";
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 5.0,
                          padding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 8.0,
                          ),
                        ),
                        child: Text(
                          "3",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (result != "0") {
                              result += " - ";
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 5.0,
                          padding: const EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 6.0,
                          ),
                        ),
                        child: Text(
                          "-",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[900],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (result != "0") {
                              result += "0";
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 5.0,
                          padding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 8.0,
                          ),
                        ),
                        child: Text(
                          "0",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (result != "0") {
                              result += ".";
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 5.0,
                          padding: const EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 6.0,
                          ),
                        ),
                        child: Text(
                          ".",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w900,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (result != "0") {
                              result += "00";
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 5.0,
                          padding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 8.0,
                          ),
                        ),
                        child: Text(
                          "00",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (result != "0") {
                              result += " + ";
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 5.0,
                          padding: const EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 6.0,
                          ),
                        ),
                        child: Text(
                          "+",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[900],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            result = "0";
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 5.0,
                          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                        ),
                        child: Text(
                          "AC",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[900],
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            result = result.length > 1 ? result.substring(0, result.length - 1) : "0";
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 5.0,
                          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                        ),
                        child: Icon(
                          Icons.backspace,
                          color: Colors.grey[900],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            result = _calculate(result);
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange[800],
                          elevation: 5.0,
                          padding: const EdgeInsets.symmetric(
                            vertical: 12.0,
                            horizontal: 64.0,
                          ),
                        ),
                        child: Text(
                          "=",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[900],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _calculate(String result) {
    if (!result.contains("/") && !result.contains("x") && !result.contains("+") && !result.contains("-")) return result;
    try {
      if (result.contains("/")) {
        List<String> splittedOutput = result.replaceAll(" ", "").split("/");
        int num1 = int.parse(splittedOutput[0]);
        int num2 = int.parse(splittedOutput[1]);
        if (num2 == 0) return "0";
        return (num1 / num2).toString();
      } else if (result.contains("x")) {
        List<String> splittedOutput = result.replaceAll(" ", "").split("x");
        int num1 = int.parse(splittedOutput[0]);
        int num2 = int.parse(splittedOutput[1]);
        return (num1 * num2).toString();
      } else if (result.contains("+")) {
        List<String> splittedOutput = result.replaceAll(" ", "").split("+");
        int num1 = int.parse(splittedOutput[0]);
        int num2 = int.parse(splittedOutput[1]);
        return (num1 + num2).toString();
      } else if (result.contains("-")) {
        List<String> splittedOutput = result.replaceAll(" ", "").split("-");
        int num1 = int.parse(splittedOutput[0]);
        int num2 = int.parse(splittedOutput[1]);
        return (num1 - num2).toString();
      }
    } catch (e) {
      print("Error while calculating result: $e");
    }
    return result;
  }
}
