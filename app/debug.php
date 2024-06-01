<?php
    $yamwi_path = '/var/www/html/yamwi';
    $key = md5(uniqid(rand(), true));
    $max_process_time = 10; // segundos

    // Debugging: Printing the Apache user and Maxima path
    $apache_user_name = shell_exec('whoami');
    echo "<pre>Apache User: $apache_user_name</pre>";

    $maxima_path = shell_exec('which maxima');
    echo "<pre>Maxima Path: $maxima_path</pre>";

    $timelimit_path = shell_exec('which timeout'); // Note change here
    echo "<pre>Timeout Path: $timelimit_path</pre>";

    // Asegúrate de que el directorio tmp existe y tiene los permisos correctos
    if (!file_exists($yamwi_path . '/tmp')) {
        mkdir($yamwi_path . '/tmp', 0777, true);
    }

    // Cambiar los permisos del directorio tmp
    chmod($yamwi_path . '/tmp', 0777);

    $mac_content = '/* Your Maxima code here */';

    // Guardar el contenido .mac en un archivo
    file_put_contents($yamwi_path . '/tmp/' . $key . '.mac', $mac_content);

    // Debugging: Check if file was created and readable
    if (file_exists($yamwi_path . '/tmp/' . $key . '.mac')) {
        echo "<pre>Maxima file created successfully: " . $yamwi_path . "/tmp/" . $key . ".mac</pre>";
    } else {
        echo "<pre>Failed to create Maxima file</pre>";
    }

    // Ejecutar Maxima con timeout
    $command = 'timeout ' . $max_process_time . ' maxima -b "' . $yamwi_path . '/tmp/' . $key . '.mac"';
    echo "<pre>Executing command: $command</pre>";

    $out = shell_exec($command);

    // Debugging: Print the output of Maxima
    echo "<pre>Maxima output: $out</pre>";

    // Eliminar el archivo temporal
    unlink($yamwi_path . '/tmp/' . $key . '.mac');
?>
