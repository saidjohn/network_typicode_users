enum TypiCodeApi {
  user("/users"),
  post("/posts"),
  comments("/comments"),
  albums("/albums"),
  photos("/photos"),
  todos("/todos"),
  products("/products");

  const TypiCodeApi(this.path);

  final String path;

  static const typicodeUrl = "jsonplaceholder.typicode.com";
}