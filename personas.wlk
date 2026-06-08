import gimnasia.*

class Personas{
    var property tiempo
    var property peso
    method realizarRutina(rutina)

    method pesoQuePierdeAlHacerRutina(rutina,unTiempo){
       return rutina.caloriasQuemadas(unTiempo) / self.kilosPorCalorias()
    }

    method kilosPorCalorias()
}

class PersonaSedentaria inherits Personas{

    override method realizarRutina(rutina){
        if(self.peso()>50){
            peso = peso - self.pesoQuePierdeAlHacerRutina(rutina,tiempo)
        } else{
            self.error("No podes realizar esta rutina, pesas "+ self.peso().toString() + ",flacucho")
        }
        
    }
    override method kilosPorCalorias(){
        return 7000
    }
}

class PersonaAtleta inherits Personas(tiempo=90){
     override method realizarRutina(rutina){
        if(rutina.caloriasQuemadas(tiempo)>10000){
            peso = peso - self.pesoQuePierdeAlHacerRutina(rutina,tiempo)
        } else{
            self.error("No podes realizar esta rutina, gastas poquito en calorias")
        }
        
    }

    override method pesoQuePierdeAlHacerRutina(rutina,unTiempo){
        return super(rutina,unTiempo) - 1
    }
    override method kilosPorCalorias(){
        return 8000
    }
}
