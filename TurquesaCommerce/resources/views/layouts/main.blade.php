<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
  <link rel="stylesheet" href="/css/style.css">

  <title>@yield('title')</title>
  
</head>

<body>
  <header class="nav-main">
    <nav class="navbar navbar-expand-lg navbar-light " style="padding:13px">
      <div class="collapse navbar-collapse d-flex justify-content-around" id="navbar">
        <a href="/" class="navbar-brand" style="margin-top: -20px;">
          <img src="/img/logo.svg" alt="">
          <img class="logo" src="/img/TurquesaBooks.svg" alt="">
        </a>
        <ul class="navbar-nav">
          <li class="nav-item">
            <a href="/" class="nav-link">Home</a>

          </li>
          <li class="nav-item">
            <a href="{{route('products.products_item')}}" class="nav-link">Produtos</a>
          </li>

          @can('admin')
          <li class="nav-item">
            <a href="{{ route('products.create') }}" class="nav-link">Painel Administrador</a>
          </li>
          @endcan


          <li class="nav-item">
            <a href="/contato" class="nav-link">contato</a>
          </li>
        </ul>
        <div class="d-flex group">
          <div>
            <form action="{{ route('products.search') }}" class="d-flex" role="search" method="get">
              <input class="form-control me-2 w-200" type="search" id="search" name="search" placeholder="O que você procura?" aria-label="Search">
              <button class="botao" type="submit"><img src="/img/search.png" alt=""></button>
            </form>
          </div>
          @guest
          <div class="perfil-img">
            <li class="nav-item dropdown">
              <a class="nav-link d-flex " href="#" id="navbarDropdownMenuLink">
                <img src="/img/perfil.png" alt="">
                <div>
                  <p class="dd">Entre <br> ou <br> cadastre</p>
                </div>
              </a>

              <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" style="top:5px">

                <a class="dropdown-item" href="/login">entrar</a>
                <a class="dropdown-item" href="/register">cadastrar</a>

              </div>
              @endguest
              @auth
              <div class="perfil-img" style="margin-bottom:15px">
            <li class="nav-item dropdown">

              <a class="nav-link d-flex " href="#" id="navbarDropdownMenuLink">
                <img src="/img/perfil.png" alt="">
                <div class="dd2">
                  <p>Bem-vindo,<br> {{ Auth::user()->name }}</p>
                </div>
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" style="top:5px">
                <a class="dropdown-item" href="/users/perfil">perfil</a>
                <a class="dropdown-item" href="/users/orders">meus pedidos</a>
                <form class="dropdown-item" action="/logout" method="post">
                  @csrf
                  <a href=" /logout" class="nav-link" onclick="event.preventDefault();
                   this.closest('form').submit();"> Sair</a>
                </form>



              </div>
              @endauth
            </li>
          </div>
          <div class="cart-img">
            <a href="/carrinho">
              <img src="/img/cart.png" alt="">
            </a>
          </div>

        </div>

    </nav>
  </header>


  @yield('content')

  <footer>
  <nav class="navbar navbar-dark bg-primary">
    <div class="container">
      <div class="row">
        <div class="col-6">
          <h5 class="white-text">Sobre nós</h5>
          <p class="grey-text text-lighten-4">Este projeto foi desenvolvido por alunos do programa DevStart da Be.Academy em parceria com a Paylivre. 
              O objetivo era criar uma plataforma online com Crud, Checkout e Autenticação, feito em PHP pelo framework Laravel. 
          </p>
        </div>  
        <div class="col-3">
        <ul>
          <h5 class="white-text">Alunos:</h5>

          <a class="navbar-brand" href="https://github.com/arthur-fellipe" > 
              <img height="24" src="/img/icons8-github.svg" alt="Link do Github">   
          <a class="navbar-brand" href="https://www.linkedin.com/in/arthur-cerqueira/" >     
              <img height="24" src="/img/icons8-linkedin-circundado.svg" alt="Link do Github">   -  Arthur Fellipe    
          </a>  

          <a class="navbar-brand" href="https://github.com/Bethania-Freitas" > 
              <img height="24" src="/img/icons8-github.svg" alt="Link do Github">   
          <a class="navbar-brand" href="https://www.linkedin.com/in/bethania-alves-de-oliveira-e-freitas-90538b15a/" >     
              <img height="24" src="/img/icons8-linkedin-circundado.svg" alt="Link do Github">   -  Bethânia Freitas     
          </a>     

          <a class="navbar-brand" href="https://github.com/DanielPinheir" > 
              <img height="24" src="/img/icons8-github.svg" alt="Link do Github">   
          <a class="navbar-brand" href="https://www.linkedin.com/in/daniel-pinheiro-machado-9874329a/" >     
              <img height="24" src="/img/icons8-linkedin-circundado.svg" alt="Link do Github">   -  Daniel Pinheiro    
          </a>  

          <a class="navbar-brand" href="https://github.com/amcarv1" > 
              <img height="24" src="/img/icons8-github.svg" alt="Link do Github">   
          <a class="navbar-brand" href="https://www.linkedin.com/in/erick-amorim-265667214/" >     
              <img height="24" src="/img/icons8-linkedin-circundado.svg" alt="Link do Github">   -  Erick Amorin    
          </a>  

          
        </div>
        <div class="col-3"><br>

          <a class="navbar-brand" href="https://github.com/eedvansilva" > 
              <img height="24" src="/img/icons8-github.svg" alt="Link do Github">   
          <a class="navbar-brand" href="https://www.linkedin.com/in/edvansilvaa/" >     
              <img height="24" src="/img/icons8-linkedin-circundado.svg" alt="Link do Github">   -  Edvan Silva    
          </a>  

          <a class="navbar-brand" href="https://github.com/GeanFerreira" > 
              <img height="24" src="/img/icons8-github.svg" alt="Link do Github">   
          <a class="navbar-brand" href="https://www.linkedin.com/in/ferreiragean/" >     
              <img height="24" src="/img/icons8-linkedin-circundado.svg" alt="Link do Github">   -  Gean Ferreira  
          </a> 

          <a class="navbar-brand" href="https://github.com/lswolf" > 
              <img height="24" src="/img/icons8-github.svg" alt="Link do Github">   
          <a class="navbar-brand" href="https://www.linkedin.com/in/lucas-rodrigues-87763bb7/" >     
              <img height="24" src="/img/icons8-linkedin-circundado.svg" alt="Link do Github">   -  Lucas Rodrigues 
          </a> 

          <a class="navbar-brand" href="https://github.com/Pablohenrique2" > 
              <img height="24" src="/img/icons8-github.svg" alt="Link do Github">   
          <a class="navbar-brand" href="https://www.linkedin.com/in/pablo-henrique-832445203/" >     
              <img height="24" src="/img/icons8-linkedin-circundado.svg" alt="Link do Github">   -  Pablo Henrique
          </a> 
        
        </div>  
      </div>
    </div>
  </div>
</nav>
      <nav class="navbar navbar-dark bg-info"> 
        <div class="container d-flex justify-content-center">
          <p class="text-center">Grupo Turquesa 🤍</p>
        </div>
        <br>
      </nav>
  </footer>
  @yield('scriptsjs')
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>

</html>