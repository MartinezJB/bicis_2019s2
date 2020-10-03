import bicis.*
import accesorios.*

class Deposito {
	const property bicis=[]
	
	method bicisRapidas() { return bicis.filter({each=> each.velocidadDeCrucero() > 25 }) }
	method marcasDeBicis() { return bicis.map({each=> each.marca() }).asSet() }
	method esNocturno() { return bicis.all({each=>each.tieneLuz()}) }
	method tieneBiciParaLlevar(cant) { return bicis.any({ each => each.carga() > cant }) }

	method marcaDeLaBiciMasRapida() { return self.bicisRapidas().max({each=>each.velocidadDeCrucero()}).marca() }
	method cargaDeBicisLargas() { return bicis.filter({each=> each.largo() >= 170}).sum({ each=>each.carga() }) }
	method cantBicisSinAccesorios() { return bicis.count({ each=>each.accesorios().isEmpty() }) }
	
	method cualesSonCompanieras(bicicleta){ return bicis.filter({ bici => bicicleta.esCompaniera(bici)  }) }
	
}

/*
	depositos:
	* const deposito1= new Deposito(bicis=[(bici1),(bici2),(bici3)])
	* const deposito2= new Deposito(bicis=[(bici1),(bici2)])
	pruebas bicis:
	* const bici1= new Bicicleta(rodado=28,largo=150,marca="Olmo", accesorios=[(farolito)])
	* const bici2= new Bicicleta(rodado=26,largo=110,marca="Legano", accesorios=[(farolito2),(canasto), (morral)])
	* const bici3= new Bicicleta(rodado=20,largo=90,marca="Legano", accesorios=[(morral2)])
 	
 	puebas objetos:
 	* const farolito= new Farolito()
 	* const farolito2= new Farolito()
 	* const canasto= new Canasto(volumen=8)
 	* const morral=new MorralDeBici(largo=21, tieneOjoDeGato=true)
 	* const morral2= new MorralDeBici(largo=6, tieneOjoDeGato=false)
 */