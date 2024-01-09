extends Timer

var tiempo_inicial: float = 1.0
var tiempo_final: float = 0.2
var duracion_interpolacion: float = 50

# Llamado cuando el nodo entra al árbol de escena por primera vez.
func _ready():
	wait_time = tiempo_inicial
	start()

# Llamado en cada fotograma. 'delta' es el tiempo transcurrido desde el fotograma anterior.
func _process(delta):
	print(wait_time)
	# Reduz el tiempo de espera en cada fotograma
	wait_time -= delta * (tiempo_inicial - tiempo_final) / duracion_interpolacion

	# Detén el Timer cuando alcanza el tiempo final
	if wait_time <= tiempo_final:
		wait_time = tiempo_final

