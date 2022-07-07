    <div class="container">
        <h1>Cadastrar Produto</h1>
        <br>
        <form action="{{ route('products.store') }}" method="POST">
            @csrf
            <div class="mb-3">
                <label for="name" class="form-label">Nome</label>
                <input type="text" class="form-control" id="name" name="name" aria-describedby="Nome">
            </div>
            <div class="mb-3">
                <label for="text" class="form-label">Descrição</label>
                <label for="description"></label><input type="text" class="form-control" id="description" name="description">
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
