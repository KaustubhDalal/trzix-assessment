<!DOCTYPE html>
<html>
<head>
    <title>Admin Register</title>
    <style>
        body { 
            font-family: sans-serif; 
            padding: 40px; 
            max-width: 400px; 
            margin: auto; 
        }
        label { 
            display: block; 
            margin-bottom: 5px; 
            font-weight: bold; 
        }
        input { 
            width: 100%; 
            padding: 8px; 
            margin-bottom: 10px; 
        }
        small { 
            color: red; 
        }
    </style>
</head>
<body>
    <h2>Admin Registration</h2>
    <form method="POST" action="{{ route('admin.register') }}">
        @csrf
        <label>Name</label>
        <input type="text" name="name" value="{{ old('name') }}">
        @error('name') <small>{{ $message }}</small> @enderror
        <label>Email</label>
        <input type="email" name="email" value="{{ old('email') }}">
        @error('email') <small>{{ $message }}</small> @enderror
        <label>Phone Number</label>
        <input type="text" name="phone_number" value="{{ old('phone_number') }}">
        @error('phone_number') <small>{{ $message }}</small> @enderror
        <label>Password</label>
        <input type="password" name="password">
        @error('password') <small>{{ $message }}</small> @enderror
        <label>Confirm Password</label>
        <input type="password" name="password_confirmation">
        <button type="submit">Register</button>
    </form>
    <p><a href="{{ route('admin.login') }}">Already registered? Login here</a></p>
</body>
</html>
