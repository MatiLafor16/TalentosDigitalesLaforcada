
<!-- funcionalidad de gestión de sesiones de CodeIgniter para obtener el nombre y perfil -->
<?php
$session = session();
$nombre = $session->get('nombre');
$perfil = $session->get('perfil_id');
?>

<!-- menú de navegación-->
<nav class="navbar navbar-expand-lg navbar-dark bg-pink fixed-top">
  <div class="container-fluid">
    <a href="<?php echo base_url('principal') ?>" alt="" width="80">
      <img src="assets/img/logoEmpresa.png" alt="Logo" width="80">
    </a>

<!-- botón de hamburguesa-->
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="fa-solid fa-burger"></span> <!-- icono de font awesome-->
    </button>
    


    <?php if (session()->perfil_id == 1) : ?>

      <a class="btn btn-outline-danger" type="submit">ADMIN:<?php echo session('nombre'); ?> </a>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="<?php echo base_url("listar_usuarios_admi");?>">Listar usuarios</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="http://localhost/phpmyadmin/index.php?route=/table/change&db=laforcada_matias&table=productos" target="_blank">Agregar productos</a>
          </li>
          <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="<?php echo base_url("listar_productos_admi");?>">Listar productos</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="<?php echo base_url('/carritoConstruccion'); ?>">Listar ventas</a>
          </li>
        </ul>

        <form class="d-flex">
          <a class="btn btn-outline-danger" type="submit" href="<?php echo base_url("/logout"); ?>">Cerrar sesión</a>
        </form>

      </div>

    <?php elseif (session()->perfil_id == 2) : ?>
      <a class="btn btn-outline-danger" type="submit">CLIENTE:<?php echo session('nombre'); ?> </a>

      <!-- navbar para clientes que pueden comprar -->

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="<?php echo base_url("quienes_somos"); ?>">¿Quiénes Somos?</a>
          </li>

          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="<?php echo base_url("acerca_de"); ?>">Acerca de</a>
          </li>

          <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="<?php echo base_url("listar_productos");?>">Productos</a>
        </li>

        </ul>

        <form class="d-flex">
          <a class="btn btn-outline-danger" type="submit" href="<?php echo base_url("/logout"); ?>">Cerrar sesión</a>
        </form>
      </div>
    <?php else : ?>

      
      <!-- navbar para clientes no logueados-->
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="<?php echo base_url("quienes_somos"); ?>">¿Quiénes Somos?</a>
          </li>

          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="<?php echo base_url("acerca_de"); ?>">Acerca de</a>
          </li>
      
          <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="<?php echo base_url("listar_productos");?>">Productos</a>
        </li>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="<?php echo base_url("registro"); ?>">Registrarse</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="<?php echo base_url("login"); ?>">Iniciar sesión</a>
          </li>
        </ul>
      </div>
      <form class="d-flex" role="buscar">
        <input class="form-control me-2" type="search" placeholder="Buscar" aria-label="Search">
        <button class="btn btn-outline-danger" type="submit">Buscar</button>
      </form>
    <?php endif; ?>

  </div>
</nav>
