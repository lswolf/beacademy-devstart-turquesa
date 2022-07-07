<form action="{{route('category.update',$category->id)}}" method="post">
  @csrf
  @method('put')
  <label for="name">categoria</label>
  <input type="text" name="name" value="{{$category->name}}">
  <button type="submit">cadastrar</button>
</form>