function ProcessCSV(fileContent)
    -- Lógica de processamento do arquivo CSV
    local titulos = {}
    local isbns = {}
    local autores = {}
    local assuntos = {}
    local valores = {}

    for linha in fileContent:gmatch("[^\n]+") do
        local titulo, isbn, autor, assunto, valor = linha:match("([^;]+);([^;]+);([^;]+);([^;]+);([^;]+);") 
        if titulo and isbn and autor and assunto and valor then
            table.insert(titulos, titulo)
            table.insert(isbns, isbn)
            table.insert(autores, autor)
            table.insert(assuntos, assunto)
            table.insert(valores, valor)
        end
    end

    -- Converter resultados em texto
    local resultado = ""
    for i = 1, #titulos do
        resultado = resultado .. "Titulo: " .. titulos[i] .. "\n"
        resultado = resultado .. "ISBN: " .. isbns[i] .. "\n"
        resultado = resultado .. "Autor: " .. autores[i] .. "\n"
        resultado = resultado .. "Assunto: " .. assuntos[i] .. "\n"
        resultado = resultado .. "Valor: " .. valores[i] .. "\n"
        resultado = resultado .. "\n"  
    end

    return resultado
end

-- Obtenha o conteúdo do arquivo CSV do PHP
local temp_file = arg[1]
local file = io.open(temp_file, "r")

if file  then
    FileContent = file:read("*a")
file:close()  
end


-- Chame a função ProcessCSV e imprima o resultado
local resultado = ProcessCSV(FileContent)
print(resultado)
