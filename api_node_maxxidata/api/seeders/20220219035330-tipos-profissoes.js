'use strict';

module.exports = {
  async up (queryInterface, Sequelize) {

      await queryInterface.bulkInsert('TiposDeProfissionals', [
        {
          descricao: 'Ceo',
          situacao: true,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          descricao: 'Diretor de Tecnologia',
          situacao: true,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          descricao: 'Diretora Executiva',
          situacao: true,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          descricao: 'Gerente de Operacoes',
          situacao: true,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          descricao: 'Gerente de Pessoas e Cultura',
          situacao: true,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          descricao: 'RH',
          situacao: true,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
         {
          descricao: 'Advogado',
          situacao: true,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          descricao: 'Estudante',
          situacao: true,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          descricao: 'Fonoaudiologa',
          situacao: true,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          descricao: 'Advogada',
          situacao: true,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          descricao: 'Motorista de Aplicativos',
          situacao: true,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          descricao: 'Empressario',
          situacao: true,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          descricao: 'Professor',
          situacao: true,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          descricao: 'Caminhoneiro',
          situacao: true,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          descricao: 'Estudante',
          situacao: true,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          descricao: 'Dentista',
          situacao: true,
          createdAt: new Date(),
          updatedAt: new Date(),
        },
        {
          descricao: 'Policial',
          situacao: true,
          createdAt: new Date(),
          updatedAt: new Date(),
      },
      {
        descricao: 'Policial',
        situacao: true,
        createdAt: new Date(),
        updatedAt: new Date(),
    },{
      descricao: 'Full-Stack Junior',
      situacao: true,
      createdAt: new Date(),
      updatedAt: new Date(),
  },
    ], {});

  },

  async down (queryInterface, Sequelize) {

     await queryInterface.bulkDelete('People', null, {});
     
  }
};
