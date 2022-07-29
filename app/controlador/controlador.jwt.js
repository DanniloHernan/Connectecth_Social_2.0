const jwt = require('jsonwebtoken')

//Generacion de token

module.exports.generaToken = async (data)=> {
    const resultado = jwt.sign({data} , process.env.SECRET_KEY ) //Tiempo maximo 15 minutos de validez
    return resultado
}

//Validacion de token activo

module.exports.verificacionCliente = async (token)=> {
    const resultado = jwt.verify(token, process.env.SECRET_KEY)
    if(resultado){
        return resultado
    }else {
        throw new Error ('Token no valido!')
    }
}