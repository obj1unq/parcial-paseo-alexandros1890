

//Esta clase no debe existir, 
//está para que el test compile al inicio del examen
//al finalizar el examen hay que borrar esta clase
class XXX {
	var talle= null
	var desgaste= null
	var min= null
	var max= null
	var prendas= null
	var ninios= null
	var edad= null
	var juguete = null
	var abrigo = null
}

class Prenda{
	var property desgaste
	var property talle
	var property comodidad
	var property abrigo
	
	method nivelDeAbrigo(){
		return abrigo
	}
	
	method comodidad(unNinio){
		return if(unNinio.talle()== talle){8}else{0}
	}
	
	method calidad(unNinio){
		return unNinio.nivelComodidad(self)+abrigo
	}
	
}

class PrendaPesada inherits Prenda{
	
}
class PrendaLiviana inherits Prenda{
	
	
	
}
class PrendaDePar {
		var property derecho //una prenda derecha	
		var property izquierdo // una prenda izquierda
		
		method desgastePar(){
			return derecho.desgaste()+izquierdo.desgaste()/2
		}
		
		method intercambiar(unaPrendaPar){
		return 	if(derecho.talle()==unaPrendaPar.derecho().talle()){
				derecho=unaPrendaPar.derecho()
				unaPrendaPar.derecho()==derecho
			}else{ self.error("no se puede realizar el cambio,distinto talle")}
		}
		
		method nivelDeAbrigo(){
			return derecho.abrigo()+izquierdo.abrigo()
		}
}


class Ninio{
	var property prendas=#{}
	var property edad
	var property talle
	
	

	method nivelComodidad(unaPrenda){
		return self.comodidad(unaPrenda)+unaPrenda.comodidad(self)
	}
	
	
	method comodidad(unaPrenda){
		return if(unaPrenda.desgaste()<=3){unaPrenda.comodidad()- unaPrenda.desgaste()
			
		}else{unaPrenda.comodidad()-3}
	}
	
		
	
	method cantDePrendas(){
		return prendas.size()
	}
	
	
}

class Familia{
	var ninios=#{}

	method familiaAptaSalir(){
		return ninios.forEach({ninio=>ninio.cantDePrendas()>4}) and
			   ninios.forEach({ninio=>ninio.abrigo()>=3})and
			   
			
	}
	
}




//Objetos usados para los talles
object xs {
}

object s {
}
object m {
	
}
object l{
	
}
object xl{
	
}