 <?php 
if (strlen(session_id())<1) 
  session_start();
  ?>
 <!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <title>SIS| SCHOOL</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="../public/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../public/css/font-awesome.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../public/css/AdminLTE.min.css">
    <link rel="stylesheet" href="/css/mi.css?uuid=<?php echo uniqid();?>">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="../public/css/_all-skins.css">
    <link rel="apple-touch-icon" href="../public/img/apple-touch-icon.png">
    <link rel="shortcut icon" href="../public/img/favicon.ico">

    <!-- DATATABLES -->
    <link rel="stylesheet" type="text/css" href="../public/datatables/jquery.dataTables.min.css">    
    <link href="../public/datatables/buttons.dataTables.min.css" rel="stylesheet"/>
    <link href="../public/datatables/responsive.dataTables.min.css" rel="stylesheet"/>

    <link rel="stylesheet" type="text/css" href="../public/css/bootstrap-select.min.css">

  </head>

<body class="hold-transition skin-blue sidebar-mini">
  <!-- Load Facebook SDK for JavaScript -->
<div id="fb-root"></div>
<script>
  window.fbAsyncInit = function() {
    FB.init({
      xfbml            : true,
      version          : 'v3.2'
    });
  };

  (function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/es_LA/sdk/xfbml.customerchat.js';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<!-- Your customer chat code -->
<div class="fb-customerchat"
  attribution=setup_tool
  page_id="280144326139427"
  theme_color="#0084ff"
  logged_in_greeting="Hola! deseas compartir algún sistema o descargar ?"
  logged_out_greeting="Hola! deseas compartir algún sistema o descargar ?">
</div>
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="escritorio.php" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>L</b> P</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>LEONCIO</b> PRADO</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">

    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
     
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
          <!-- User image -->
              <li class="user-header">
                <img src="../files/usuarios/<?php echo $_SESSION['imagen']; ?>" style="width:200px;height:200px;border-radius:100%;margin:0px auto;    display: block;" alt="User Image">
<br/>
                <p>
                  <b><?php echo $_SESSION['cargo']; ?></b>
                  <?php echo $_SESSION['nombre']; ?>
                </p>
              </li>
                            <li class="user-footer">
                <div class="pull-right">
                  <a href="../ajax/usuario.php?op=salir" class="btn btn-default btn-flat">Salir</a>
                </div>
              </li>

<br>
       <?php 
if ($_SESSION['escritorio']==1) {
  echo ' <li><a href="escritorio.php"><i class="fa  fa-dashboard (alias)"></i> <span>Inicio</span></a>
        </li>';
}
        ?> 


               <?php 
if ($_SESSION['grupos']==1) {
  echo '<li class="treeview">
          <a href="#">
            <i class="fa fa-shopping-cart"></i> <span>Cursos y Grados</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="grupos.php"><i class="fa fa-circle-o"></i> Cursos</a></li>
          </ul>
        </li>';
}
        ?>


          <?php
           if(isset($_GET["idgrupo"])):?>
          <li class="treeview">
          <a href="#">
            <i class="fa fa-check"></i> <span>Asistencia</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
          <li><a href="asistencia.php?idgrupo=<?php echo $_GET["idgrupo"]; ?>"><i class="fa fa-circle-o"></i> Agregar</a></li>
          </ul>
        </li>
          <li class="treeview">
          <a href="#">
            <i class="fa fa-smile-o"></i> <span>Conducta</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
          <li><a href="conducta.php?idgrupo=<?php echo $_GET["idgrupo"]; ?>"><i class="fa fa-circle-o"></i> Agregar</a></li>
          </ul>
        </li>
          <li class="treeview">
          <a href="#">
            <i class="fa fa-tasks"></i> <span>Calificaciones</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
          <li><a href="calificaciones.php?idgrupo=<?php echo $_GET["idgrupo"]; ?>"><i class="fa fa-circle-o"></i> Calificaciones</a></li>
          </ul>
        </li>
          <li class="treeview">
          <a href="#">
            <i class="fa fa-th-large"></i> <span>Materias</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
          <li><a id="btncursos" href="cursos.php?idgrupo=<?php echo $_GET["idgrupo"]; ?>"><i class="fa fa-circle-o"></i> Agregar</a></li>
          </ul>
        </li>
          <li class="treeview">
          <a href="#">
            <i class="fa fa-th-list"></i> <span>Listas</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
          <li><a id="btnlistas" href="listasis.php?idgrupo=<?php echo $_GET["idgrupo"]; ?>"><i class="fa fa-circle-o"></i> Agregar</a></li>
          </ul>
        </li>
          <?php endif; ?>


           <?php 
if ($_SESSION['acceso']==1) {
  echo '  <li class="treeview">
          <a href="#">
            <i class="fa fa-users"></i> <span>Usuarios</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="usuario.php"><i class="fa fa-circle-o"></i> Profesores</a></li>
            <li><a href="permiso.php"><i class="fa fa-circle-o"></i> Permisos</a></li>
          </ul>
        </li>';
}
        ?>     
        
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>