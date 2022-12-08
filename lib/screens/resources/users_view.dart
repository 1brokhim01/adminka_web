import 'package:adminka_project/widgets/container_widget.dart';
import 'package:flutter/material.dart';

class UsersView {
  static usersView(BuildContext context) {
    var dropdownvalue;
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      height: MediaQuery.of(context).size.height * 0.80,
      // color: Colors.grey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ContainerWidget.containerWidget(
                  widget: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Current Users',
                        style: TextStyle(
                          fontFamily: 'Body ExtraBold',
                          color: Color(0xff64748B),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // DropdownButton(
                      //   hint: const Text('30 Days'),
                      //   items: [
                      //     '30 Days',
                      //     '12 month',
                      //   ].map((String items) {
                      //     return DropdownMenuItem(
                      //       value: items,
                      //       child: Text(items),
                      //     );
                      //   }).toList(),
                      //   onChanged: (String? newValue) {
                      //     dropdownvalue = newValue!;
                      //   },
                      // ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        height: 56,
                        width: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xff0EA5E9),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.signal_cellular_alt,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Text(
                        '7',
                        style: TextStyle(
                          fontSize: 36,
                          fontFamily: 'Nunito Sans',
                          color: Color(0xff64748B),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
              ContainerWidget.containerWidget(
                widget: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'New Users',
                          style: TextStyle(
                            fontFamily: 'Body ExtraBold',
                            color: Color(0xff64748B),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '15 k',
                          style: TextStyle(
                            fontFamily: 'Body ExtraBold',
                            color: Color(0xff64748B),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      '75%',
                      style: TextStyle(
                        fontFamily: 'Body ExtraBold',
                        color: Color(0xff64748B),
                        fontSize: 36,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 24, bottom: 12),
            child: Text(
              'Users',
              style: TextStyle(
                fontFamily: 'Body ExtraBold',
                color: Color(0xff64748B),
                fontSize: 24,
              ),
            ),
          ),
          SizedBox(
            height: 32,
            width: MediaQuery.of(context).size.width * 0.3,
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.33,
            width: MediaQuery.of(context).size.width,
            child: Card(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.check_box_outline_blank_sharp,
                              color: Color(0xff64748B),
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.filter_list_alt,
                              color: Color(0xff64748B),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 64, right: 190),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'ID',
                            style: TextStyle(
                              fontFamily: 'Body ExtraBold',
                              color: Color(0xff64748B),
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            'AVATAR',
                            style: TextStyle(
                              fontFamily: 'Body ExtraBold',
                              color: Color(0xff64748B),
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            'NAME',
                            style: TextStyle(
                              fontFamily: 'Body ExtraBold',
                              color: Color(0xff64748B),
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            'EMAIL',
                            style: TextStyle(
                              fontFamily: 'Body ExtraBold',
                              color: Color(0xff64748B),
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            'ADMIN',
                            style: TextStyle(
                              fontFamily: 'Body ExtraBold',
                              color: Color(0xff64748B),
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            '2FA',
                            style: TextStyle(
                              fontFamily: 'Body ExtraBold',
                              color: Color(0xff64748B),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.23,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return Container(
                            child: Column(
                              children: [
                                const Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 50, right: 20),
                                  child: ListTile(
                                    leading: Text(
                                      '$index',
                                      style: const TextStyle(
                                        fontFamily: 'Body ExtraBold',
                                        color: Color(0xff64748B),
                                        fontSize: 12,
                                      ),
                                    ),
                                    title: Row(
                                      children: [
                                        const SizedBox(width: 100),
                                        CircleAvatar(
                                            radius: 12,
                                            backgroundImage: NetworkImage(
                                                'https://source.unsplash.com/random/$index')),
                                        const SizedBox(width: 100),
                                        Text(
                                          '1brokhim-$index',
                                          style: const TextStyle(
                                            fontFamily: 'Body ExtraBold',
                                            color: Color(0xff64748B),
                                            fontSize: 12,
                                          ),
                                        ),
                                        const SizedBox(width: 120),
                                        Text(
                                          'mior@nova.laravel.com$index',
                                          style: const TextStyle(
                                            fontFamily: 'Body ExtraBold',
                                            color: Color(0xff64748B),
                                            fontSize: 12,
                                          ),
                                        ),
                                        const SizedBox(width: 50),
                                        const Icon(
                                            Icons
                                                .check_circle_outline_outlined,
                                            color: Colors.green),
                                        const SizedBox(width: 140),
                                        const Icon(Icons.cancel_outlined,
                                            color: Colors.red),
                                        const SizedBox(width: 10),
                                        const Icon(
                                            Icons.more_horiz_outlined,
                                            color: Colors.grey),
                                        const SizedBox(width: 10),
                                        const Icon(
                                            Icons.remove_red_eye_outlined,
                                            color: Colors.grey),
                                        const SizedBox(width: 10),
                                        const Icon(Icons.edit_note_rounded,
                                            color: Colors.grey),
                                        const SizedBox(width: 10),
                                        const Icon(Icons.delete_outlined,
                                            color: Colors.grey),
                                      ],
                                    ),
                                  ),
                                ),
                                const Divider(),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
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
