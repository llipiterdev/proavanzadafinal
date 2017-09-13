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
                    <th>Cupos</th>
                    <th>Tipo de la materia</th>
                    <th>Día</th>
                    <th>Hora de inicio</th>
                    <th>Hora fin</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                
                <?php
                    foreach ($lista->result() as    $key) { ?>
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
                            <?php echo $key->cupos; ?>
                        </td>
                        <td>
                            <?php echo $key->tipo_materia; ?>
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
                            
                        <?php echo form_open('siete/registrar_estudiante');?>
                            <?php if ($key->cupos > 0) { ?>
                                <input type="hidden" name="id_materia" value="<?php echo $key->id_materia ?>"/>
                                <button type="submit" class="btn btn-primary btn-sm">Resgitrar estudiante</button>                           
                                <?php } else { ?>
                                <button type="button" class="btn btn-primary btn-sm disabled">Resgitrar estudiante</button>                           
                                <?php } ?>
                            <?php echo form_close(); ?>
                        </td>
                    </tr>
                    <?php }  ?>
            </tbody>
        </table>
        <a class="btn btn-outline-dark" href="<?php echo base_url()?>">Inicio</a>
    </div>
</div>