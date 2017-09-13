<div class="container">
    
<div class="jumbotron" id="contenido">
<h1 class="display-3">Programación avanzada</h1>
        <hr class="my-4">
<?php 
$data = array(
    "name" => "codigo_materia",
    "class" => "form-control",
    "id" => "codigo_materia",
    "placeholder" => "Digite el codigo de la materia",
);
echo form_open('/dos/resultado/');
echo form_label('Codigo materia', 'codigo_materia');
echo form_input($data);
?>
<div class="form-group">
</div>
<button type="submit" class="btn btn-primary">Buscar</button>
<a class="btn btn-info" href="<?php echo base_url()?>">Regresar</a>
<?php
echo form_close();
?>
</div>
</div>