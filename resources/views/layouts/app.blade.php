<!DOCTYPE html>
<html>
<head>
    <title>My Laravel App</title>
    <style>
        body {
            font-family: sans-serif;
            max-width: 800px;
            margin: 30px auto;
        }

        a {
            margin-right: 10px;
        }
    </style>
</head>
<body>
    @auth('admin')
        <div style="margin-bottom: 15px;">
            <strong>Welcome, {{ Auth::guard('admin')->user()->name }}</strong> |
            <a href="{{ route('admin.logout') }}"
               onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                Logout
            </a>

            <form id="logout-form" action="{{ route('admin.logout') }}" method="POST" style="display: none;">
                @csrf
            </form>
        </div>
    @endauth

    @yield('content')
</body>
</html>
