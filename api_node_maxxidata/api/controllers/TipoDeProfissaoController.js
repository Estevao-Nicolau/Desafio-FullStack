const database = require('../models')

class TipoDeProfissaoController {
    // Buscar toda a tabela.
    static async consultarTodosProfissional(req, res) {
        try {
            const todasAsProfissoes = await database.TiposDeProfissional.findAll() // Metodo para chamar a tabela.
        return res.status(200).json(todasAsProfissoes) //Retorna a resposta da requisiçao, passar no formato Json.
        } catch (error) {
            return res.status(500).json(error.message) // Mostra o erro em Json.
        }
    }
    // Buscar por id.
    static async pegaUmTipo(req, res) {
        const {id} = req.params
        try {
            const umaPessoa = await database.Profissional.findOne({
                where: {id: Number(id)
                }
            })
            return res.status(200).json(umaPessoa)
        } catch (error) {
            return res.status(500).json(error.message)
        }
    }
}
module.exports = TipoDeProfissaoController

