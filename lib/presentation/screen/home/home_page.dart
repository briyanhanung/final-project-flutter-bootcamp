import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:projek/data/datasource/banner_remote_datasource.dart';
import 'package:projek/data/repository/banner_repository_impl.dart';
import 'package:projek/domain/entity/banner_response_entity.dart';
import 'package:projek/domain/usecase/get_banners_usecase.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Text(widget.title),
      ),
      body: bannerResponse == null
          ? const Center(child: CircularProgressIndicator())
          : SizedBox(
              height: 150,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: bannerResponse?.data.length ?? 0,
                separatorBuilder: (context, index) => const SizedBox(width: 8),
                itemBuilder: (context, index) {
                  final banner = bannerResponse?.data[index];
                  return Image.network(
                    banner?.eventImage ?? '',
                    height: 150,
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
