// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  final String name;
  final int age;
  final List<String> jobs;

  User({required this.name, required this.age, required this.jobs}); 

  User copyWith({
    String? name,
    int? age,
    List<String>? jobs,
  }) {
    return User(
      name: name ?? this.name,
      age: age ?? this.age,
      jobs: jobs ?? this.jobs,
    );
  }
}
