<form action="{{ url('charge') }}" method="POST">
    <input type="text" name="amount">
    {{ csrf_field() }}
    <input type="submit" name="submit" value="Pay Now" />
</form>