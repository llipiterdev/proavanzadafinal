<div class="container">

    <div class="jumbotron" id="contenido">
        <h1 class="display-3">Programación avanzada</h1>
        <hr class="my-4">
        <?php echo form_open('siete/registro') ?>

<?php 
$id_materia;
foreach ($id->result() as $key){
     $id_materia = $key->id_materia;
} 

echo form_input('id_materia', $id_materia);

?>
        <div class="form-group">
            <label for="nombre">Nombre</label>
            <input type="text" name="nombre" class="form-control" id="nombre" placeholder="Nombre del estudiante">
        </div>
        <div class="form-group">
            <label for="nombre">Documento</label>
            <input type="text" name="documento" class="form-control" id="nombre" placeholder="Documento del estiudiante">
        </div>
        <div class="form-group">
            <label for="exampleFormControlSelect1">Carrera</label>
            <select class="form-control" name="carrera" id="exampleFormControlSelect1">
                    <option>Diseño Grafico</option>
                    <option>Doctorado en Ciencias del Mar </option>
                    <option>Ingenieria de Sistemas</option>
                    <option>Ingenieria Química</option>
                    <option>Maestría en Diseño de Producto 	</option>
                    <option>Maestría en Economía</option>   
            </select>
        </div>
        <div class="form-group">
            <label for="exampleFormControlSelect1">Tipo de estudiante</label>
            <select class="form-control" name="tipo_estudiante" id="exampleFormControlSelect1">
                        <option value="1">Pregrado</option>
                        <option value="2">Posgrado</option> 
                </select>
        </div>
        <button type="submit" class="btn btn-primary">Registrar</button>

        <?php echo form_close() ?>
    </div>
</div>