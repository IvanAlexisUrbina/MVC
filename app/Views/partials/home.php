<?php

if (isset($_SESSION['welcome']) && $_SESSION['welcome'] == false) {
    echo "
    <div class='container text-focus-in'>
        <div class='alert alert-success alert-dismissible fade show' role='alert'>
            <strong>Bienvenido, " . $_SESSION['nameUser'] . "!</strong> Gracias por ingresar al sistema.
            <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Cerrar'></button>
        </div>
    </div>";
    $_SESSION['welcome'] = true;
}

?>
<div class="container">

<img src="img/map.jpg" alt="">

</div>



