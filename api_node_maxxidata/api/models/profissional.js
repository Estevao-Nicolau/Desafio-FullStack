'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Profissional extends Model {
    
    static associate(models) {
      Profissional.hasMany(models.TiposDeProfissional, {
        foreignKey: 'descricao'
      })
    }
  }
  Profissional.init({
    nome: DataTypes.STRING,
    telefone: DataTypes.STRING,
    email: DataTypes.STRING,
    tipoDeProfissional: DataTypes.STRING,
    situacao: DataTypes.BOOLEAN
  }, {
    sequelize,
    modelName: 'Profissional',
  });
  return Profissional;
};