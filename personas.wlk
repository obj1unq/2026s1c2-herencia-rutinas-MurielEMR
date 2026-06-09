import gimnasia.*

class Personas{
    var peso
    method realizarRutina(rutina){
        self.verificarRutina(rutina)
        peso = peso - self.pesoQuePierdeAlHacerRutina(rutina,self.tiempo())
    }
    method verificarRutina(rutina){
        if (not self.puedeHacerRutina(rutina)){
            self.error("No, no podes")
        }
    }
    method puedeHacerRutina(rutina)

    method pesoQuePierdeAlHacerRutina(rutina,unTiempo){
       return rutina.caloriasQuemadas(unTiempo) / self.kilosPorCalorias()
    }

    method kilosPorCalorias()
    method tiempo()
    method peso()
}

class PersonaSedentaria inherits Personas{
    const tiempoDeEjercicio
    
    override method kilosPorCalorias(){
        return 7000
    }
    override method tiempo(){
        return tiempoDeEjercicio
    }
    override method puedeHacerRutina(rutina){
        return self.peso()>50
    }
}

class PersonaAtleta inherits Personas(){
    override method puedeHacerRutina(rutina){
        return rutina.caloriasQuemadas(self.tiempo())
    }

    override method pesoQuePierdeAlHacerRutina(rutina,unTiempo){
        return super(rutina,unTiempo) - 1
    }
    override method kilosPorCalorias(){
        return 8000
    }
    override method tiempo(){
        return 90
    }
}
