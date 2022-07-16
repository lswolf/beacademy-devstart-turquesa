@extends('layouts.main')
@section('title', 'Editar Categoria')
@section('content')

<div class="d-flex" style="margin-left: 50px; margin-bottom: 50px">

    <div style="width: 500px; margin-top: 50px">
        <h2>FALE CONOSCO</h2>

        <div style="margin-top: 50px">
            <h3 style="font-size: 20px">TELEFONE</h3>
            <div class="d-flex">
                <img src="/img/phone.svg" alt="">
                <div style="margin-left: 5px">
                    <p style="margin: 0; margin-top: 15px; font-weight: 500;">(31) 3557-3333</p>
                    <p style="font-weight: 500;">WhatsApp:(91) 99999-1990</p>
                </div>
            </div>
        </div>

        <div>
            <h3 style="font-size: 20px; margin-bottom: 10px">EMAIL</h3>
            <div class="d-flex">
                <img src="/img/email.svg" alt="">
                    <p style="margin-left: 5px; padding-top: 20px; font-weight: 500;">comercial@turquesabooks.com</p>
            </div>
        </div>

        <div>
            <h3 style="font-size: 20px; margin-top: 10px">REDES SOCIAIS</h3>
            <div class="d-flex">
                <img src="/img/instagram.svg" alt="">
                    <p style="margin-left: 5px; padding-top: 20px; font-weight: 500;">comercial@turquesabooks.com</p>
            </div>
            <div class="d-flex">
                <img src="/img/facebook.svg" alt="">
                    <p style="margin-left: 5px; padding-top: 20px; font-weight: 500;">comercial@turquesabooks.com</p>
            </div>
            <div class="d-flex">
                <img src="/img/twitter.svg" alt="">
                    <p style="margin-left: 5px; padding-top: 20px; font-weight: 500;">comercial@turquesabooks.com</p>
            </div>
        </div>
    </div>

    <div style="margin-left: 100px; margin-top: 80px">
        <h3 style="font-size: 20px">INFORMAÇÕES DE CONTATO</h3>

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
                    <textarea name="" id="" cols="80" rows="10"></textarea>
                </div>
              <button type="submit" class="btn btn-primary">Enviar</button>            
        </form>
    </div>

</div>

@endsection