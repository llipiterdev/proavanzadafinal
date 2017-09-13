<div class="container">
    <div class="jumbotron" id="contenido">
        <h1 class="display-3">Programación avanzada</h1>
        <hr class="my-4">
        <table class="table table-sm">
            <thead>
                <tr class="table-primary">
                    <th>Materia</th>
                    <th>Profesor</th>
                </tr>
            </thead>
            <tbody>
            <?php
                    foreach ($lista->result() as $key) { ?>
                    <tr class="table-info">
                        <td>
                            <?php echo $key->nombre; ?>
                        </td>
                        <td>
                            <?php echo $key->tipo_profesor; ?>
                        </td>
                    </tr>


                    <?php }  ?>
            </tbody>
        </table>
        <a class="btn btn-outline-dark" href="<?php echo base_url()?>">Inicio</a>
    </div>
</div>