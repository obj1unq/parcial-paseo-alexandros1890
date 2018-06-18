
//Nota 2 dos
//tests: No se pueden probar porque falla la compilacion
//1) está incompleto: Las subclases no sobreescriben lo que corresponde. LA prendaPar no entiende el mensaje 
//2) Está bien buscado el lanzamiento de error, el determinar el talle de la prenda está medio desprolijo pero 
//funciona. Grave error al intentar setear una variable desde fuera del objeto
//3) Incompleto, las prendas livianas deben delegar en un objeto 
//4) Mal e incompleto
//5 al 8 no lo hace

//Esta clase no debe existir, 
//está para que el test compile al inicio del examen
//al finalizar el examen hay que borrar esta clase

//TODO: Eliminar esta clase
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
	var property comodidad //TODO: La comodidad se calcula, no puede ser una variable
	var property abrigo  //TODO: OJO, que no todas las prendas requieren de una variable abrigo
	
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
		
		//TODO: Usar polimorfismo con respeecto a otras prendas
		method desgastePar(){
			return derecho.desgaste()+izquierdo.desgaste()/2
		}
		
		method intercambiar(unaPrendaPar){
			//TODO: EL talle es del par, no está bueno fijarse en los elementos
			//Si aun asi lo vas a resolver mirando el elemento, entonces hacer un método aparte
			//en prenda par que delegue en el derecho
		return 	if(derecho.talle()==unaPrendaPar.derecho().talle()){
				derecho=unaPrendaPar.derecho()
				//TODO: Esto no tiene sentido! debería ser: unaPrendaPar.derecho(derecho)
				//(Suponiendo que en la referencia derecho está apuntando al objeto que corresponde)
				unaPrendaPar.derecho()==derecho
			}else{ self.error("no se puede realizar el cambio,distinto talle")}
		}
		
		method nivelDeAbrigo(){
			return derecho.abrigo()+izquierdo.abrigo()
		}
		
		//TODO: deberia sorbeescribir la comodidad
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
		
		//TODO: Esto es una pregunta pero el forEach no devuelve nada porque se usa para ordenes
		//debería resolverse con un all
		//Además hay que delegar la preguntal al ninio: que el ninio diga por si mismo si
		//puede o no puede salir
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