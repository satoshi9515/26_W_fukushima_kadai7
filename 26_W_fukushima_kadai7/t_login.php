

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<link rel="stylesheet" href="css/sample1.css">
<!-- <link href="css/bootstrap.min.css" rel="stylesheet">
<style>div{padding: 10px;font-size:16px;}</style> --> 
<title>講師ログイン</title>
</head>
<body>
<!-- Head[Start] -->
<header>
  <nav class="navbar navbar-default">
    <div class="container-fluid">
      <div class="navbar-header">
        <ul class="navi-header">
          <li><img src="img/logo.png"></li>
          <li><a class="navbar-brand" href="login.php">ログイン</a></li>
          <li><a class="navbar-brand" href="univ_regist.php">講師ログイン</a></li>
        </ul>
      </div>
    </div>
  </nav>
</header>
<!-- Head[End] -->

<!-- Main[Start] -->
<form method="post" action="t_login_act.php">
  <div class="jumbotron">
   <fieldset>
    <legend>ログインページ</legend>
     <label>ID：<input type="text" name="t_account"></label><br>
     <label>PW：<input type="text" name="t_pw"></label><br>
     <input type="submit" value="ログイン">
    </fieldset>
  </div>
</form>
<!-- Main[End] -->

</body>
</html>
