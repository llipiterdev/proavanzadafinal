<div class="container">
    
<div class="jumbotron" id="contenido">
<h1 class="display-3">Programación avanzada</h1>
        <hr class="my-4">
<?php 
$data = array(
    "name" => "documento",
    "class" => "form-control",
    "id" => "documento",
    "placeholder" => "Ingresa tu número de cedula",
);
echo form_open('/uno/resultado/');
echo form_label('Documento', 'documento');
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