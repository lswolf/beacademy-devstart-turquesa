<!DOCTYPE>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title')</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>
    <div class="container">
        <h1>Cadastrar Produto</h1>
        <br>
        <form action="{{ route('product.store') }}" method="POST">
            @csrf
            <div class="mb-3">
                <label for="name" class="form-label">Nome</label>
                <input type="text" class="form-control" id="name" name="name" aria-describedby="Nome">
            </div>
            <div class="mb-3">
                <label for="text" class="form-label">Descrição</label>
                <input type="text" class="form-control" id="description" name="description">
            </div>
            <div class="mb-3">
                <label for="photo" class="form-label">Imagem</label>
                <input type="text" class="form-control form control-md" id="photo" name="photo">
            </div>
            <div class="mb-3">
                <label for="url" class="form-label">URL</label>
                <input type="text" class="form-control form control-md" id="url" name="url">
            </div>
            <div class="mb-3">
                <label for="cost_price" class="form-label">Preço de custo</label>
                <input type="text" class="form-control form control-md" id="cost_price" name="cost_price">
            </div>
            <div class="mb-3">
                <label for="sale_price" class="form-label">Valor de venda</label>
                <input type="text" class="form-control form control-md" id="sale_price" name="sale_price">
            </div>
            <div class="mb-3">
                <label for="category_id" class="form-label">ID Categoria</label>
                <input type="text" class="form-control form control-md" id="category_id" name="category_id">
            </div>
            <button type="submit" class="btn btn-primary">Enviar</button>
        </form>
    </div>
</body>
