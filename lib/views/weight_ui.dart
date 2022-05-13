import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WeightUI extends StatefulWidget {
  double? mon_cal;

  WeightUI({
    Key? key,
    this.mon_cal,
  }) : super(key: key);

  @override
  State<WeightUI> createState() => _WeightUIState();
}

class _WeightUIState extends State<WeightUI> {
  String mon = '0.00';
  String BMR = '0.00';
  int downValue = 1;

  TextEditingController tmpCtrl = TextEditingController(text: '');
  TextEditingController KG_ctrl = TextEditingController();
  TextEditingController C_ctrl = TextEditingController();
  TextEditingController year_ctrl = TextEditingController();
  showWarningDialog(context, msg) {
    //เรียกใช้งานฟังก์ชัน showDialog
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Container(
            color: Colors.deepPurple,
            padding: EdgeInsets.only(
              top: 10.0,
              bottom: 10.0,
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'คำเตือน',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          content: Text(
            msg,
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'ตกลง',
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text(
          'BMR App',
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30.0,
              ),
              Image.asset(
                'assets/images/bmr.png',
                height: 150.0,
              ),
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50.0,
                  right: 50.0,
                ),
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.person,
                    ),
                    Icon(
                      FontAwesomeIcons.personDress,
                    ),
                    Radio(
                      onChanged: (value) {
                        setState(() {
                          downValue = int.parse(value.toString());
                        });
                      },
                      value: 1,
                      groupValue: downValue,
                      activeColor: Colors.blue,
                    ),
                    Text(
                      'ชาย',
                    ),
                    Radio(
                      onChanged: (value) {
                        setState(() {
                          downValue = int.parse(value.toString());
                        });
                      },
                      value: 2,
                      groupValue: downValue,
                      activeColor: Colors.blue,
                    ),
                    Text(
                      'หญิง',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                  padding: const EdgeInsets.only(
                    left: 40.0,
                    right: 40.0,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.weightHanging,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: TextField(
                          controller: KG_ctrl,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: 'น้ำหนัก',
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            hintText: '0.00',
                            labelStyle: TextStyle(
                              color: Colors.blue,
                            ),
                            hintStyle: TextStyle(
                              color: Colors.grey[400],
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'กิโลกรัม',
                      )
                    ],
                  )),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                  padding: const EdgeInsets.only(
                    left: 40.0,
                    right: 40.0,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.c,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: TextField(
                          controller: C_ctrl,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: 'ส่วนสูง',
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            hintText: '0.00',
                            labelStyle: TextStyle(
                              color: Colors.blue,
                            ),
                            hintStyle: TextStyle(
                              color: Colors.grey[400],
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'เซนติเมตร',
                      )
                    ],
                  )),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                  padding: const EdgeInsets.only(
                    left: 40.0,
                    right: 40.0,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.calendarDays,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: TextField(
                          controller: year_ctrl,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: 'อายุ',
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            hintText: '0.00',
                            labelStyle: TextStyle(
                              color: Colors.blue,
                            ),
                            hintStyle: TextStyle(
                              color: Colors.grey[400],
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'ปี',
                      )
                    ],
                  )),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 40.0,
                  right: 40.0,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          double? KG;
                          double? C;
                          double? year;
                          if (KG_ctrl.text.isEmpty) {
                            showWarningDialog(
                                context, 'น้ำหนักห้ามว่าง และห้ามเป็น0');
                            return;
                          } else if (C_ctrl.text.isEmpty) {
                            showWarningDialog(
                                context, 'ส่วนสูงห้ามว่าง และห้ามเป็น0');
                            return;
                          } else if (year_ctrl.text.isEmpty) {
                            showWarningDialog(
                                context, 'อายุห้ามว่าง และห้ามเป็น0');
                            return;
                          } else {
                            double BMR = 0;
                            double KG = double.parse(KG_ctrl.text);
                            double C = double.parse(C_ctrl.text);
                            double year = double.parse(year_ctrl.text);
                            if (downValue == 1) {
                              BMR = 66 + (13.7 * KG) + (5 * C) - (6.8 * year);
                              setState(() {
                                mon = BMR.toString();
                              });
                            } else if (downValue == 2) {
                              BMR = 665 + (9.6 * KG) + (1.8 * C) - (4.7 * year);
                              setState(() {
                                mon = BMR.toString();
                              });
                            }
                          }
                        },
                        child: Text(
                          'คำนวณ',
                        ),
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(
                              MediaQuery.of(context).size.width - 80.0,
                              50.0,
                            ),
                            primary: Colors.blue),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            KG_ctrl.text = '';
                            C_ctrl.text = '';
                            year_ctrl.text = '';
                            mon = '0.00';
                          });
                        },
                        child: Text(
                          'ยกเลิก',
                        ),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(
                            MediaQuery.of(context).size.width - 80.0,
                            50.0,
                          ),
                          primary: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 2.0,
                width: MediaQuery.of(context).size.width - 80.0,
                color: Colors.black,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'อัตราการเผาผลาญพลังงาน',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                mon,
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
