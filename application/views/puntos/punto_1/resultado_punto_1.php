<div class="container">
    <div class="jumbotron" id="contenido">
        <h1 class="display-3">Programación avanzada</h1>
        <hr class="my-4">
        <table class="table table-sm">
            <thead>
                <tr class="table-primary">
                    <th>Materia</th>
                    <th>Salon</th>
                    <th>Modulo</th>
                    <th>Día</th>
                    <th>Hora inicio</th>
                    <th>Hora fin</th>
                    <th>Profesor</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    foreach ($info->result() as $key) { ?>
                    <tr class="table-info">
                        <td>
                            <?php echo $key->nombre_materia; ?>
                        </td>
                        <td>
                            <?php echo $key->salon; ?>
                        </td>
                        <td>
                            <?php echo $key->modulo; ?>
                        </td>
                        <td>
                            <?php echo $key->dia; ?>
                        </td>
                        <td>
                            <?php echo $key->hora_inicio; ?>
                        </td>
                        <td>
                            <?php echo $key->hora_fin; ?>
                        </td>
                        <td>
                            <?php echo $key->nombre; ?>
                        </td>
                    </tr>


                    <?php }  ?>
            </tbody>
        </table>
        <a class="btn btn-outline-dark" href="<?php echo base_url()?>uno">Buscar otro documento</a>
        <a class="btn btn-outline-dark" href="<?php echo base_url()?>">Inicio</a>
    </div>
</div>