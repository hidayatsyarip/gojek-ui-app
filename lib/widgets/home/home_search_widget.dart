import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';

class HomeSearchWidget extends StatelessWidget {
  const HomeSearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var homeController = Get.put(HomeController());

    _buildAccountSettings() {
      List<Widget> accountSettings = [];

      for (var item in homeController.accountSettingList) {
        accountSettings.add(Container(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Icon(item.icon, color: Colors.grey.shade600),
              const SizedBox(
                width: 20.0,
              ),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item.label,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Icon(Icons.arrow_forward_ios)
                ],
              ))
            ],
          ),
        ));

        accountSettings.add(const Divider());
      }

      return accountSettings;
    }

    return Container(
      height: 50.0,
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: Row(
        children: [
          Expanded(
              child: TextField(
            cursorColor: Colors.grey.shade600,
            decoration: InputDecoration(
                hintText: "Find services, food or places",
                hintStyle: TextStyle(color: Colors.grey.shade600),
                filled: true,
                fillColor: Colors.grey.shade100,
                contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
                prefixIcon:
                    Icon(Icons.search, size: 30.0, color: Colors.grey.shade600),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(30.0)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(30.0)),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(30.0))),
          )),
          const SizedBox(
            width: 20.0,
          ),
          GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return Container(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 20.0),
                        child: ListView(
                          physics: const BouncingScrollPhysics(),
                          children: [
                            Row(children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: const Icon(Icons.arrow_back_ios,
                                      size: 20.0)),
                              const Text(
                                "My Profile",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    letterSpacing: 1.2,
                                    fontWeight: FontWeight.bold),
                              )
                            ]),
                            const SizedBox(
                              height: 5.0,
                            ),
                            const Divider(
                              thickness: 1.0,
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const CircleAvatar(
                                  backgroundColor: Colors.green,
                                  child: Text(
                                    "JMI",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.0,
                                        color: Colors.white),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20.0,
                                ),
                                Expanded(
                                    child: Container(
                                  height: 100.0,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            "J. M. Iryas",
                                            style: TextStyle(
                                                fontSize: 25.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Icon(
                                            Icons.edit,
                                            size: 20.0,
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 2.0,
                                      ),
                                      Text(
                                        "+62812345678",
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.grey.shade600),
                                      ),
                                      const SizedBox(
                                        height: 2.0,
                                      ),
                                      Text("emailuser@gmail.com",
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.grey.shade600))
                                    ],
                                  ),
                                ))
                              ],
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const Text(
                              "Account",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Column(
                              children: _buildAccountSettings(),
                            )
                          ],
                        ),
                      );
                    });
              },
              child: CircleAvatar(
                backgroundColor: Colors.green.shade800,
                child: const Icon(Icons.account_circle, color: Colors.white),
              ))
        ],
      ),
    );
  }
}
