<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_FILES["csvFile"])) {
        $file = $_FILES["csvFile"];

        if ($file["error"] !== UPLOAD_ERR_OK) {
            echo "Erro ao fazer o upload do arquivo.";
        } else {
            $temp_name = $file["tmp_name"];

            // Chame o script Lua para processar o arquivo CSV
            $lua_script = 'C:\xampp\htdocs\parse-csv\main.lua';
            $output_file = 'C:\xampp\htdocs\parse-csv\output.txt';

            // Execute o Lua com o caminho do script e o caminho do arquivo temporário
            $command = "lua \"$lua_script\" \"$temp_name\" > \"$output_file\" 2>&1";
            exec($command, $output, $return_code);

            if ($return_code == 0) {
                // O processamento do Lua foi bem-sucedido, e o resultado está em $output
                // Faça o que for necessário com $output (gerar o download, por exemplo)
                header("Content-Type: text/plain");
                header("Content-Disposition: attachment; filename=resultado.txt");
                readfile($output_file);

                
            } else {
                // O processamento Lua falhou
                echo "Erro no processamento do arquivo CSV com Lua. Código de retorno: $return_code <br>";
                echo "Saída do comando: <br>";
                echo implode("<br>", $output);
            }
        }
    }
}
?>
