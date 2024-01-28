<div class="container mt-5">
    <h2>Listado de Reservas</h2>

    <!-- Tabla con DataTable -->
    <table id="reservationsTable" class="DataTable table table-striped table-bordered">
        <thead>
            <tr>
                <th>ID</th>
                <th>Fecha</th>
                <th>Parqueadero</th>
                <th>Acciones</th>
                <!-- Agrega más columnas según tus necesidades -->
            </tr>
        </thead>
        <tbody>
            <!-- Filas existentes -->
            <tr>
                <td>1</td>
                <td>2024-01-28 12:00:00</td>
                <td>Parqueadero 1</td>
                <td>
                    <!-- Botón con ojito -->
                    <button class="btn btn-info">
                        Ver <!-- Asegúrate de incluir la biblioteca de Bootstrap Icons (bi) -->
                    </button>
                </td>
            </tr>
            <tr>
                <td>2</td>
                <td>2024-01-28 13:00:00</td>
                <td>Parqueadero 2</td>
                <td>
                    <!-- Botón con ojito -->
                    <button class="btn btn-info">
                        Ver
                    </button>
                </td>
            </tr>
            <!-- Agrega más filas según tus necesidades -->
            <tr>
                <td>3</td>
                <td>2024-01-28 14:00:00</td>
                <td>Parqueadero 3</td>
                <td>
                    <!-- Botón con ojito -->
                    <button class="btn btn-info">
                        Ver
                    </button>
                </td>
            </tr>
            <!-- Repite este bloque para añadir más filas -->
        </tbody>
    </table>
</div>
