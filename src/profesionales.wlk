import universidades.*

class ProfesionalAsociado {
	var property universidad 
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	method honorariosPorHora() { return 3000 }
	method cobrar(monto) {}
}

class ProfesionalVinculado {
	var property universidad 
	
	method provinciasDondePuedeTrabajar() = #{universidad.provincia()}
	method honorariosPorHora() = universidad.honorariosXHora()
	method cobrar(monto) {} 
}

class ProfesionalLibre {
	var property universidad 
	var property hriosXHora = 0
	const property provinciasDondeTrabaja = #{}
	
	method provinciasDondePuedeTrabajar() = self.provinciasDondeTrabaja()
	method honorariosPorHora() = self.hriosXHora()
	method cobrar(monto) {}
}