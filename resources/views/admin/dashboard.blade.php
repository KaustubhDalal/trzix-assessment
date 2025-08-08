<h2>Welcome, {{ auth('admin')->user()->name }}</h2>
<form method="POST" action="{{ route('admin.logout') }}">
    @csrf
    <button type="submit">Logout</button>
</form>
<p>Admin Dashboard</p>