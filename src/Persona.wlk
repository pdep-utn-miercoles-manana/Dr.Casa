class Persona {
	
	const enfermedades = []
	var temperatura = 36
	var cantidadDeCelulas
	
	method contraerEnfermedad(unaEnfermedad) {
		enfermedades.add(unaEnfermedad)	
	}
	
	method tiene(unaEnfermedad) {
		return enfermedades.contains(unaEnfermedad)
	}
	
	method vivirUnDia() {
		enfermedades.forEach({unaEnfermedad => unaEnfermedad.afectarA(self)})
	}
	
	method subirTemperatura(unosGrados) {
		temperatura = (temperatura + unosGrados).min(45)
	}
	
	method destruirCelulas(unasCelulas) {
		cantidadDeCelulas = (cantidadDeCelulas - unasCelulas).max(0)
	}
	
	method cantidadDeCelulas() {
		return cantidadDeCelulas
	}
	
	method celulasAfectadasPorEnfermedadesAgresivas() {
		return enfermedades
			.filter({unaEnfermedad => unaEnfermedad.esAgresiva(self)})
			.sum({unaEnfermedad => unaEnfermedad.cantidadCelulasAmenazadas()})
	}
	
	method enfermedadQueMasCelulasAfecta() {
		return enfermedades.max({unaEnfermedad => unaEnfermedad.cantidadCelulasAmenazadas()})
	}
	
	method estaEnComa() {
		return temperatura == 45 || cantidadDeCelulas < 1000000
	}
	
}