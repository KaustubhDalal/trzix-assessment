<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <style>
        body { font-family: sans-serif; padding: 40px; max-width: 400px; margin: auto; }
        label { display: block; margin-bottom: 5px; font-weight: bold; }
        input { width: 100%; padding: 8px; margin-bottom: 10px; }
        small { color: red; }
    </style>
</head>
<body>

    <h2>Admin Login</h2>

    @if ($errors->any())
        <div>
            @foreach ($errors->all() as $error)
                <small>{{ $error }}</small><br>
            @endforeach
        </div>
    @endif

    <form method="POST" action="{{ route('admin.login') }}">
        @csrf

        <label>Email</label>
        <input type="email" name="email" value="{{ old('email') }}">
        @error('email') <small>{{ $message }}</small> @enderror

        <label>Password</label>
        <input type="password" name="password">
        @error('password') <small>{{ $message }}</small> @enderror

        <button type="submit">Login</button>
    </form>

    <p><a href="{{ route('admin.register') }}">Don't have an account? Register</a></p>

</body>
</html>
