import 'package:adminka_project/screens/dashboards/main_view.dart';
import 'package:adminka_project/screens/dashboards/user_insights_view.dart';
import 'package:adminka_project/screens/resources/addresses_view.dart';
import 'package:adminka_project/screens/resources/comments_view.dart';
import 'package:adminka_project/screens/resources/posts_view.dart';
import 'package:adminka_project/screens/resources/purchases_view.dart';
import 'package:adminka_project/screens/resources/roles_view.dart';
import 'package:adminka_project/screens/resources/tags_view.dart';
import 'package:adminka_project/screens/resources/users_view.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  TextEditingController controller = TextEditingController();
  String func = 'users';

  chooseFunc() {
    if (func == 'main') {
      return MainView.mainView(context);
    } else if (func == 'userInsights') {
      return UserInsightsView.userInsightsView(context);
    } else if (func == 'addresses') {
      return AddressesView.addressesView(context);
    } else if (func == 'comments') {
      return CommentsView.commentsView(context);
    } else if (func == 'post') {
      return PostsView.postsView(context);
    } else if (func == 'purchases') {
      return PurchasesView.purchasesView(context);
    } else if (func == 'roles') {
      return RolesView.rolesView(context);
    } else if (func == 'tags') {
      return TagsView.tagsView(context);
    } else if (func == 'users') {
      return UsersView.usersView(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff1f5f9),
      body: Column(
        children: [
          //! -----------------------  AppBar
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height * 0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  'assets/svgs/logo.svg',
                  color: Colors.blue,
                ),
                textFormField(context),
                Row(
                  children: const [
                    Icon(
                      Icons.notifications_none_outlined,
                      color: Color(0xff94A3B8),
                    ),
                    SizedBox(width: 32),
                    CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.black,
                      child: Text(
                        "DC",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 32),
                    Text('Digital Creative'),
                    Icon(Icons.expand_more_sharp, color: Color(0xff94A3B8)),
                    SizedBox(width: 32),
                  ],
                ),
              ],
            ),
          ),
          //! -----------------------  Body -> ROW -> (Menu && Change View)
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.80,
            width: MediaQuery.of(context).size.width * 1,
            child: Padding(
              padding: const EdgeInsets.all(24),
              //* ----------- ROW -> (Menu && Change View)
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //? ---------- Menu
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.height * 0.80,
                    // color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        children: [
                          ExpandablePanel(
                            theme: ExpandableThemeData.empty,
                            header: Row(
                              children: const [
                                Icon(Icons.grid_view_outlined,
                                    color: Color(0xff64748B)),
                                SizedBox(width: 50),
                                Text(
                                  'Dashboards',
                                  style: TextStyle(
                                      fontFamily: 'Nunito Sans',
                                      color: Color(0xff64748B),
                                      fontSize: 18),
                                ),
                              ],
                            ),
                            collapsed: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      func = 'main';
                                    },
                                    child: const Text(
                                      'Main',
                                      style: TextStyle(
                                        fontFamily: 'Nunito Sans',
                                        color: Color(0xff64748B),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  TextButton(
                                    onPressed: () {
                                      func = 'userInsights';
                                    },
                                    child: const Text(
                                      'User Insights',
                                      style: TextStyle(
                                        fontFamily: 'Nunito Sans',
                                        color: Color(0xff64748B),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            expanded: const Text(''),
                          ),
                          const SizedBox(height: 30),
                          ExpandablePanel(
                            theme: ExpandableThemeData.empty,
                            header: Row(
                              children: const [
                                Icon(Icons.view_carousel_sharp,
                                    color: Color(0xff64748B)),
                                SizedBox(width: 50),
                                Text(
                                  'Resources',
                                  style: TextStyle(
                                      fontFamily: 'Nunito Sans',
                                      color: Color(0xff64748B),
                                      fontSize: 18),
                                ),
                              ],
                            ),
                            collapsed: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      func = 'addresses';
                                    },
                                    child: const Text(
                                      'Addresses',
                                      style: TextStyle(
                                        fontFamily: 'Nunito Sans',
                                        color: Color(0xff64748B),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  TextButton(
                                    onPressed: () {
                                      func = 'comments';
                                    },
                                    child: Text(
                                      'Comments',
                                      style: TextStyle(
                                        fontFamily: 'Nunito Sans',
                                        color: Color(0xff64748B),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  TextButton(
                                    onPressed: () {
                                      func = 'posts';
                                    },
                                    child: const Text(
                                      'Posts',
                                      style: TextStyle(
                                        fontFamily: 'Nunito Sans',
                                        color: Color(0xff64748B),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  TextButton(
                                    onPressed: () {
                                      func = 'purchases';
                                    },
                                    child: const Text(
                                      'Purchases',
                                      style: TextStyle(
                                        fontFamily: 'Nunito Sans',
                                        color: Color(0xff64748B),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  TextButton(
                                    onPressed: () {
                                      func = 'roles';
                                    },
                                    child: const Text(
                                      'Roles',
                                      style: TextStyle(
                                        fontFamily: 'Nunito Sans',
                                        color: Color(0xff64748B),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  TextButton(
                                    onPressed: () {
                                      func = 'tags';
                                    },
                                    child: const Text(
                                      'Tags',
                                      style: TextStyle(
                                        fontFamily: 'Nunito Sans',
                                        color: Color(0xff64748B),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  TextButton(
                                    onPressed: () {
                                      func = 'users';
                                    },
                                    child: const Text(
                                      'Users',
                                      style: TextStyle(
                                        fontFamily: 'Nunito Sans',
                                        color: Color(0xff64748B),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            expanded: const Text(''),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //? ---------- Change View
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: MediaQuery.of(context).size.height * 0.80,
                    // color: Colors.teal,
                    child: chooseFunc(),
                  ),
                ],
              ),
            ),
          ),
          //! -----------------------  About
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Powered by',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Nunito Sans',
                        color: Color(0xff64748B),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Laravel Nova',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                    ),
                    const Text(
                      '· v4.0.3 (Silver Surfer)',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Nunito Sans',
                        color: Color(0xff64748B),
                      ),
                    ),
                  ],
                ),
                const Text(
                  '© 2022 Laravel LLC · by Taylor Otwell and David Hemphill.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff64748B),
                    fontSize: 12,
                    fontFamily: 'Nunito Sans',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  SizedBox textFormField(BuildContext context) {
    return SizedBox(
      height: 30,
      width: MediaQuery.of(context).size.width * 0.36,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            hintText: '\nPress / to search',
            floatingLabelAlignment: FloatingLabelAlignment.center,
            hintStyle: const TextStyle(
                overflow: TextOverflow.ellipsis,
                fontSize: 12,
                color: Color(0xff94A3B8)),
            filled: true,
            fillColor: const Color(0xffF1F5F9),
            prefixIcon: const Icon(Icons.search),
            prefixIconColor: const Color(0xff94A3B8),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8),
            )),
      ),
    );
  }
}
