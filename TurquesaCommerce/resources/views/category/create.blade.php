<form action="{{route('category.store')}}" method="post">
  @csrf
  <label for="name">categoria</label>
  <input type="text" name="name">
  <button type="submit">cadastrar</button>
</form>