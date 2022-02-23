const {Router} = require('express')
const TipoDeProfissaoController = require('../controllers/TipoDeProfissaoController')

const router = Router()
router.get('/profissional', TipoDeProfissaoController.consultarTodosProfissional) // Metodo para chamar a tabela.
router.get('/profissional/:id', TipoDeProfissaoController.pegaUmTipo) // Rota que consultar pelo id.

module.exports = router
