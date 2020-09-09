class Persona {
	
	const enfermedades = []
	
	method contraerEnfermedad(unaEnfermedad) {
		enfermedades.add(unaEnfermedad)	
	}
	
	method tiene(unaEnfermedad) {
		return enfermedades.contains(unaEnfermedad)
	}
	
}