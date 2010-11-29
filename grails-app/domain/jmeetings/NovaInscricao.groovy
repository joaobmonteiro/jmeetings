package jmeetings

class NovaInscricao {
    String nome
    String email
    Boolean fezCheckin = true
    Boolean sorteado = false
    Boolean premiado = false
    static constraints = {
        nome(length:2..50, blank:false)
        email(blank:false)
        email(unique:true,email:true)
    }
     void marcarSorteado(){
         println 'entrou sorteado'
        this.sorteado = true
        save(flush:true)
    }

    void marcarPremiado(){
        println 'entrou premiado'
        this.sorteado = true
        this.premiado = true
        save(flush:true)
    }
}