<h1>Listagem de Usuário</h1>
<a href="{{ route('users.create') }}" class="btn btn-success">Novo Usuário</a>
<table class="table">
    <thead class="text-center">
      <tr>
        <th scope="col">ID</th>
        <th scope="col">Nome</th>
        <th scope="col">E-mail</th>
        <th scope="col">Data Cadastro</th>
        <th scope="col">Ações</th>
      </tr>
    </thead>
    <tbody class="text-center">
        @foreach($users as $user)
        <tr>
            <th scope="row">{{ $user->id }}</th>
            <td>{{ $user->name }}</td>
            <td>{{ $user->email }}</td>
            <td>{{ date('d/m/Y - H:i', strtotime($user->created_at)) }}</td>
            <td>
                <a href="{{ route('users.edit', $user->id) }}">Editar</a>
                <form action="{{ route('users.destroy', $user->id) }}"  method="POST">
                    @method('DELETE')
                    @csrf
                    <button type="submit">Apagar</button>
                </form>
            </td>
            
        </tr>
        @endforeach
    </tbody>
  </table>
