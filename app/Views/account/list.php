<div class="container mt-5">
    <h2>Cuenta</h2>

    <!-- Enlaces a secciones -->
    <ul class="nav nav-tabs" id="myTabs">
        <li class="nav-item">
            <a class="nav-link active" id="vehicles-tab" data-toggle="tab" href="#vehicles">Mis Vehículos</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="payment-tab" data-toggle="tab" href="#payment">Métodos de Pago</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="history-tab" data-toggle="tab" href="#history">Historial</a>
        </li>
    </ul>

    <!-- Contenido de las secciones -->
    <div class="tab-content mt-3">
        <!-- Sección de Mis Vehículos -->
        <div class="tab-pane fade show active" id="vehicles">
            <h3>Mis Vehículos</h3>
            <!-- Datos de ejemplo para un vehículo -->
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Toyota Camry (2020)</h5>
                    <p class="card-text">Color: Plateado</p>
                    <p class="card-text">Matrícula: ABC123</p>
                </div>
            </div>
        </div>

        <!-- Sección de Métodos de Pago -->
        <div class="tab-pane fade" id="payment">
            <h3>Métodos de Pago</h3>
            <!-- Datos de ejemplo para un método de pago -->
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Tarjeta de Crédito</h5>
                    <p class="card-text">**** **** **** 1234</p>
                    <p class="card-text">Titular: Juan Pérez</p>
                    <p class="card-text">Fecha de Vencimiento: 12/23</p>
                </div>
            </div>
        </div>

        <!-- Sección de Historial -->
        <div class="tab-pane fade" id="history">
            <h3>Historial</h3>
            <!-- Datos de ejemplo para una reserva -->
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Fecha</th>
                        <th>Parqueadero</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Datos de reserva de ejemplo -->
                    <tr>
                        <td>1</td>
                        <td>2024-01-28 12:00:00</td>
                        <td>Parqueadero 1</td>
                        <td>
                            <button class="btn btn-info">Ver</button>
                        </td>
                    </tr>
                    <!-- Puedes agregar más filas según sea necesario -->
                </tbody>
            </table>
        </div>
    </div>
</div>
