@extends('layouts.main')
@section('title', 'Editar Categoria')
@section('content')

<div>

    <div>
        <h2>FALE CONOSCO</h2>

        <div>
            <h3>TELEFONE</h3>
            <div>
                <img src="" alt="">
                <p>(xx) xxxx-xxxx</p>
                <p>Whats App:(xx) xxxx-xxxx</p>
            </div>
        </div>

        <div>
            <h3>EMAIL</h3>
            <div>
                <img src="" alt="">
                <p>email@email.com</p>
            </div>
        </div>

        <div>
            <h3>Redes Sociais</h3>
            <div>
                <img src="" alt="">
                <p>email@email.com</p>
            </div>
            <div>
                <img src="" alt="">
                <p>email2@email.com</p>
            </div>
            <div>
                <img src="" alt="">
                <p>email3@email.com</p>
            </div>
        </div>
    </div>

    <div>
        <h3>INFORMAÇÕES DE CONTATO</h3>

        <form action="" method="POST">
            @csrf
            <div class="mb-3">
                <label for="name" class="form-label"></label>
                <input type="text" class="form-control" id="name" name="name" placeholder="Nome*">
              </div>
              <div class="mb-3">
                <label for="email" class="form-label"></label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Email*">
              </div>
              <div class="mb-3">
                  <label for="phone" class="form-label"></label>
                  <input type="phone" class="form-control" id="phone" name="phone" placeholder="Telefone*">
                </div>
                <div class="mb-3">
                    <label for="comments" class="form-label"></label>
                    <input type="text" class="form-control" id="comments" name="comments" placeholder="Comentários*">
                </div>
              <button type="submit" class="btn btn-primary">Enviar</button>            
        </form>
    </div>
</div>

@endsection