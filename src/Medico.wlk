import Persona.*

class Medico inherits Persona {
	
	const dosis = 0
	
	method atenderA(unaPersona) {
		unaPersona.serTratada(dosis)
	}
	
	override method contraerEnfermedad(unaEnfermedad) {
		super(unaEnfermedad)
		self.atenderA(self)
	}
}
