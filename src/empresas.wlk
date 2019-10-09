import universidades.*
import profesionales.*
import personas.*
import instituciones.*

class EmpresaDeServicios {
var property proContratados = #{}
var property hriosXProfesional = 0

	method profesionalesConEstudiosEn(univ) {
		return proContratados.count{p => p.universidad() == univ}
	}
	method profesionalesCaros() {
		return proContratados.filter{p => p.honorariosPorHora() > hriosXProfesional}
	}
	method universidadesFormadoras() {
		return proContratados.map{p => p.universidad()}.asSet()
	}
	method profesionalMasBarato() {
		return proContratados.min{p => p.honorariosPorHora()}
	}
	method esDeGenteAcotada() {
		return proContratados.all{p => p.provinciasDondePuedeTrabajar().size() <= 3}
	}
	method puedeSatisfacerAUn(solicitante) {
		return proContratados.any{p => solicitante.puedeSerAtendido(p)}
	}
}