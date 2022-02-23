const {Router} = require('express') // O Router é uma ferramenta do express
const ProfissaoController = require('../controllers/ProfissaoController')

const router = Router()

router.get('/usuarios', ProfissaoController.pegaTodasAsProfissoes) // Rota que consulta usuarios.
router.get('/usuarios/:id', ProfissaoController.pegaUmaPessoa) // Rota que consulta pelo id.
router.post('/usuarios', ProfissaoController.criarUsuario) // Rota de Criar usuario.
router.put('/usuarios/:id', ProfissaoController.editaUsuario) // Rota Editar usario.
router.delete('/usuarios/:id', ProfissaoController.deletaUsario) // Rota Deletar usario.

module.exports = router
