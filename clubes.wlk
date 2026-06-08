import gimnasia.*
import personas.*
class Club{
    const property predios=[]

    method mejorPredio(persona){
       return predios.max({predio => predio.caloriasTotalesQueQuema(persona)})
    }
    method prediosTranquis(persona){
        return predios.filter({predio => predio.tieneRutinaQueGastaMenosDe(500,persona)})
    }
    method rutinasMasExigentes(persona){
        const rutinasExigentes = []
        
        predios.forEach({predio => 
        rutinasExigentes.add(predio.rutinaMasExigente(persona))})
        return rutinasExigentes
        //method rutinasMasExigentes(persona) {
        //return predios.map({ predio => predio.rutinaMasExigente(persona) })}
    }
}

class Predio{
    const property rutinas = []

    method caloriasTotalesQueQuema(persona){
       return  rutinas.sum({rutina => 
       persona.pesoQuePierdeAlHacerRutina(rutina,persona.tiempo())
        })
    }
    method tieneRutinaQueGastaMenosDe(calorias,persona){
        return rutinas.any({rutina => 
        rutina.caloriasQuemadas(persona.tiempo())<calorias
        })
    }
    method rutinaMasExigente(persona){
        return rutinas.max({rutina => persona.pesoQuePierdeAlHacerRutina(rutina,persona.tiempo())})
    }
    
}
