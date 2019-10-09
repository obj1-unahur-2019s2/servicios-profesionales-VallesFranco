import universidades.*
import profesionales.*

class Institucion {
var property unisConocidas = #{}

	method puedeSerAtendido(profesional) = 
		unisConocidas.contains(profesional.universidad())	
}