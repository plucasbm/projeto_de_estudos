import 'package:flutter/material.dart';
import 'package:projeto_1/controllers/home_controller.dart';
import 'package:projeto_1/models/post_model.dart';
import 'package:projeto_1/repositories/home_repository_imp.dart';
import 'package:projeto_1/services/prefs_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _controller = HomeController(HomeRepositoryImp());

  @override
  void initState() {
    super.initState();
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
          onPressed: () {
            PrefService.logout();
            Navigator.of(context).pushNamedAndRemoveUntil('/login', (_) => true);
          }, 
          icon: Icon(Icons.logout)),
        ],
        centerTitle: true,
      ),
      body: ValueListenableBuilder<List<PostModel>>(
        valueListenable: _controller.posts,
        builder: (_, list, __){
          return ListView.separated(
            itemCount: list.length,
            itemBuilder: (_, index){
              return ListTile(
                leading: Text(list[index].id.toString()),
                title: Text(list[index].title),
                trailing: Icon(Icons.arrow_forward),
                onTap: (){
                  Navigator.pushNamed(context,'/details', arguments: list[index]);
                }
              );
            },
            separatorBuilder: (_, __) => Divider(),
          );
        }
      ),
    );
  }
}