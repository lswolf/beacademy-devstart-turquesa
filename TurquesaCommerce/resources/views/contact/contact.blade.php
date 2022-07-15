@extends('layouts.main')
@section('title', 'Editar Categoria')
@section('content')

<div>
    <div>
        <h3>INFORMAÇÕES DE CONTATO</h3>

        <form action="">
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
    <div>

    </div>
</div>

@endsection