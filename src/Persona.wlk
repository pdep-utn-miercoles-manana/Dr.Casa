class Persona {
	
	const enfermedades = []
	const property grupoSanguineo
	
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
	
	method disminuirCelulas(unasCelulas) {
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
	
	method serTratada(unaDosis) {
		enfermedades.forEach({unaEnfermedad => unaEnfermedad.atenuar(unaDosis * 15)})
		enfermedades.removeAllSuchThat({unaEnfermedad => unaEnfermedad.fueCurada()})
	}
	
	method enfermedades() {
		return enfermedades
	}
	
	method morirse() {
		temperatura = 0
	}
	
	method donarA(otraPersona, unaCantidadDeCelulasADonar) {
		self.validarDonacion(otraPersona, unaCantidadDeCelulasADonar)
		self.hacerTransfusion(otraPersona, unaCantidadDeCelulasADonar)
	}

	method hacerTransfusion(otraPersona, unaCantidadDeCelulasADonar) {
		otraPersona.recibirCelulas(unaCantidadDeCelulasADonar)
		self.disminuirCelulas(unaCantidadDeCelulasADonar)
	}
	
	method recibirCelulas(unaCantidadDeCelulasADonar) {
		cantidadDeCelulas += unaCantidadDeCelulasADonar
	}
		
	method validarDonacion(otraPersona, unaCantidadDeCelulasADonar) {
		self.validarTieneCelulasSuficientes(unaCantidadDeCelulasADonar)
		self.validarCompatibilidad(otraPersona)
	}
	
	method validarTieneCelulasSuficientes(unaCantidadDeCelulasADonar) {
		if (! self.tieneCelulasSuficientes(unaCantidadDeCelulasADonar)) {
			throw new Exception(message = "No se pudo donar por falta de células")
		}
	}
	
	method validarCompatibilidad(otraPersona) {
		if (! otraPersona.esCompatibleCon(self)) {
			throw new Exception(message = "No se pudo donar por incompatibilidad")
		}
	}
	
	method tieneCelulasSuficientes(unaCantidadDeCelulasADonar) {
		return unaCantidadDeCelulasADonar <= cantidadDeCelulas / 4 && unaCantidadDeCelulasADonar > 500
	}
	
	method esCompatibleCon(unDonante) {
		return self.grupoSanguineo().puedeRecibir(unDonante.grupoSanguineo()) &&
			   unDonante.grupoSanguineo().puedeDonar(self.grupoSanguineo())
	}
	
}




