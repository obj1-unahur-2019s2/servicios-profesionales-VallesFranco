import profesionales.*

class Persona {
var property provincia	
	
	method puedeSerAtendido(profesional) = 
		profesional.provinciasDondePuedeTrabajar().contains(provincia)
}