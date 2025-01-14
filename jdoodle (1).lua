-- Inicializamos una tabla vacía para almacenar las tareas
local tareas = {}

-- Función para agregar una tarea
function agregarTarea(tarea)
    table.insert(tareas, {tarea = tarea, completado = false})
    print("Tarea añadida: " .. tarea)
end

-- Función para ver todas las tareas
function verTareas()
    for i, tarea in ipairs(tareas) do
        local estado = tarea.completado and "[X]" or "[ ]"
        print(i .. ". " .. estado .. " " .. tarea.tarea)
    end
end

-- Función principal del programa
while true do
    print("1. Agregar tarea")
    print("2. Ver tareas")
    print("3. Marcar como completada")
    print("4. Eliminar tarea")
    print("5. Salir")

    local opcion = io.read("*n")

    if opcion == 1 then
        print("Ingrese la tarea:")
        local nuevaTarea = io.read()
        agregarTarea(nuevaTarea)
    elseif opcion == 2 then
        verTareas()
    -- ... Implementar las demás opciones ...
    elseif opcion == 5 then
        break
    else
        print("Opción inválida")
    end
end