import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(
          "Welcome!",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Phone Number",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Your Phone Number",
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(width: 1, color: Colors.grey), //<-- SEE HERE
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text("We'll send you an OTP")),
            SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "OTP",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter the OTP sent to Your Phone",
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(width: 1, color: Colors.grey), //<-- SEE HERE
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 10),
              child: Divider(
                thickness: 2,
                color: Colors.black,
              ),
            ),
            Text(
              "Choose an option below to get started",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              width: double.infinity,
              height: 150,
              child: Center(
                  child: Text(
                "Producer",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              width: double.infinity,
              height: 150,
              child: Center(
                  child: Text(
                "Consumer",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              width: double.infinity,
              height: 150,
              child: Center(
                  child: Text(
                "Service Provider",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
