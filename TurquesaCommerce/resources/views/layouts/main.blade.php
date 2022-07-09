<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
  <link rel="stylesheet" href="/css/style.css">

  <title>@yield('title')</title>
  @yield('scriptsjs')
</head>

<body>
  <header class="nav-main">
    <nav class="navbar navbar-expand-lg navbar-light " style="padding:30px">
      <div class="collapse navbar-collapse d-flex justify-content-around" id="navbar">
        <a href="/" class="navbar-brand">
          <img src="/img/logo.svg" alt="">
          <img class="logo" src="/img/TurquesaBooks.svg" alt="">
        </a>
        <ul class="navbar-nav">
          <li class="nav-item">
            <a href="/" class="nav-link">Home</a>

          </li>
          <li class="nav-item">
            <a href="" class="nav-link">Produtos</a>
          </li>


          <li class="nav-item">
            <a href="{{ route('products.create') }}" class="nav-link">Criar produtos</a>
          </li>


          <li class="nav-item">
            <a href="" class="nav-link">contato</a>
          </li>
        </ul>
        <div class="d-flex group">
          <div>
            <form action="" class="d-flex" role="search" method="GET">
              <input class="form-control me-2 w-200" type="search" name="search" placeholder="Oque você procura?" aria-label="Search">
              <button class="botao" type="submit"><img src="/img/search.png" alt=""></button>

            </form>
          </div>
          <div class="perfil-img">
            <li class="nav-item dropdown">
              <a class="nav-link d-flex " href="#" id="navbarDropdownMenuLink">
                <img src="/img/perfil.png" alt="">
                <div>
                  <p style="font-size:15px ; margin-left:4px;">Entre <br> ou <br> cadastre</p>
                </div>
              </a>
              @guest
              <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" style="top:5px">

                <a class="dropdown-item" href="/login">entrar</a>
                <a class="dropdown-item" href="/register">cadastrar</a>

              </div>
              @endguest
              @auth
              <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" style="top:5px">
                <a class="dropdown-item" href="/users/perfil">perfil</a>
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
            <a href="">
              <img src="/img/cart.png" alt="">
            </a>
          </div>

        </div>

    </nav>
  </header>


  @yield('content')

</body>

</html>