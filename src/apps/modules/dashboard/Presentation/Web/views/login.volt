<!DOCTYPE html>
<html>

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Login</title>
	<link rel="stylesheet" href="{{url('assets/demo.css') }}">
	<link rel="stylesheet" href="{{url('assets/form-register.css') }}">

</head>

    <div class="main-content">

        <!-- You only need this form and the form-register.css -->

        <form class="form-register" method="POST" action="{{ url('login/submit') }}">
            
            <div class="form-register-with-email">

                <div class="form-white-background">
                  
                    <div class="form-title-row">
                        <h1>Login User</h1>
                    </div>
                    <p>{{ this.flashSession.output() }}</p>
                   
                    <div class="form-row">
                        <label>
                            <span>Email</span>
                            <input type="text" name="email">
                        </label>
                    </div>

                    <div class="form-row">
                        <label>
                            <span>Password</span>
                            <input type="password" name="password">
                        </label>
                    </div>

                    <div class="form-row">
                        <button type="submit">Login</button>
                    </div>
                    <div class="form-row">
                        <p>Belum punya akun ?  <a href="{{ url('register') }}">Daftar</a> </p>
                       
                    </div>
                </div>


            </div>
        </form>
      

    </div>

</body>

</html>
