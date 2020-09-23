import Persona.*

class Medico inherits Persona {
	
	const dosis
	
	method atenderA(unaPersona) {
		unaPersona.serTratada(dosis)
	}
	
	method contraerEnfermedad(unaEnfermedad) {
		enfermedades.add(unaEnfermedad)
		self.atenderA(self)	
	}
}
