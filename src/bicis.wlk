import accesorios.*

class Bicicleta {
	var property rodado
	var property largo
	var property marca
	var property accesorios = []
	
	method altura() { return rodado * 2.5 + 15}
	method velocidadDeCrucero() { return if(largo>120) rodado+6 else rodado + 2 }
	method carga() { return accesorios.sum({each=>each.carga()}) }
	method peso() { return accesorios.sum({ each => each.peso() }) + rodado/2 }
	method tieneLuz() { return accesorios.any({ each=>each.esLuminoso() }) }
	
	method accesoriosLivianos() { return accesorios.count({each=>each.peso() <= 1}) }
	
	method esCompaniera(bici){
		return self.marca() == bici.marca() && (self.largo() - bici.largo() <= 10)
	}
}
