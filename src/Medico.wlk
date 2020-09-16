import Persona.*

class Medico inherits Persona {
	
	const dosis
	
	method atenderA(unaPersona) {
		unaPersona.serTratada(dosis)
	}
}
