const bodyParser = require('body-Parser')

// Rotas.
const usuarios = require('./profissoesRoute')
const profissional = require('./tipoDeProfisaoRouter')
module.exports = app => {
    app.use(
        bodyParser.json(),
        usuarios,
        profissional
    )
}