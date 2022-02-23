const database = require('../models')

class ProfissaoController {
    // Buscar toda a tabela.
    static async pegaTodasAsProfissoes(req, res) {
        try {
            const todasAsProfissoes = await database.Profissional.findAll() // Metodo para chamar a tabela.
        return res.status(200).json(todasAsProfissoes) //Retorna a resposta da requisiçao, passar no formato Json.
        } catch (error) {
            return res.status(500).json(error.message) // Mostra o erro em Json.
        }
    }

    // Buscar por id.
    static async pegaUmaPessoa(req, res) {
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
    
    // Criar um Usuario.
    static async criarUsuario(req, res) {
        const novoUsuario = req.body
        try {
            const novoUsuarioCriado = await database.Profissional.create(novoUsuario)
            return res.status(200).json(novoUsuarioCriado)
        } catch (error) {
            return res.status(500).json(error.message)
        }
    }

    // Editar usuario.
    static async editaUsuario(req, res) {
        const {id} = req.params
        const novasInfo = req.body
        try {
            await database.Profissional.update(novasInfo, {where: {id: Number(id)}})
            const usuarioAtualizado = await database.Profissional.findOne({where:{
                id: Number(id)}})
                return res.status(200).json(usuarioAtualizado)
        } catch (error) {
            return res.status(500).json(error.message)
        }
        
    }

    // Deletar usuario.
    static async deletaUsario(req, res) {
        const {id} = req.params
        try {
            await database.Profissional.destroy({where:{id: Number(id)}})
            return res.status(200).json({mensagem: `id ${id} deletado`})
        } catch (error) {
            return res.status(500).json(error.message)
        }
    }

}

module.exports = ProfissaoController