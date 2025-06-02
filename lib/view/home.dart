import 'package:flutter/material.dart';
import 'package:ujian_rakryan/view/detailresep.dart';
import 'package:ujian_rakryan/widget/bottomnavbar.dart';
import 'package:ujian_rakryan/service/service.dart';
import 'package:ujian_rakryan/models/models.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _homeState();
}

class _homeState extends State<Home> {
  final RecipeService _recipeService = RecipeService();
  List<Recipe> _recipes = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadRecipes();
  }

  Future<void> _loadRecipes() async {
    try {
      final recipes = await _recipeService.getRecipes();
      setState(() {
        _recipes = recipes;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Error loading recipes: $e')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Home Page'),
        backgroundColor: Colors.redAccent,
      ),
      body:
          _isLoading
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: _recipes.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 8,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(
                        color: const Color.fromARGB(255, 153, 153, 153),
                        width: 1.5,
                      ),
                    ),
                    elevation: 2,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(12),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailResep(recipe: _recipes[index]),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          _recipes[index].name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
              
      bottomNavigationBar: BottomNavbar(
        context: context,
        currentIndex: 0,
        onTap: (index) {},
      ),
    );
  }
}
