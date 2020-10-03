class Farolito {
	method peso() { return 0.5}
	method carga() { return 0 }
	method esLuminoso() { return true }
}

class Canasto {
	var property volumen
	
	method peso() { return volumen / 10 }
	method carga() { return volumen * 2 }
	method esLuminoso() { return false }
}

class MorralDeBici {
	var property largo
	var property tieneOjoDeGato 
	
	method peso() { return 1.2 }
	method carga() { return largo / 3 }
	method esLuminoso() { return tieneOjoDeGato }
}
/*
 * para agregar nuevos tipos de accesorios se necesita crear una nueva clase.
 * esta debe poseer los metodos: peso(), carga() y esLuminoso() para no tener
 * problemas con el polimorfismo.
 * con el ejemplo de incluir un canasto para la parte de atras de puede crear
 * un nuevo atributo booleano llamado "esDelantero" y crear una nueva instancia
 * con este atributo en false
 */