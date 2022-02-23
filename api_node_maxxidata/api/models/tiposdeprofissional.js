'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class TiposDeProfissional extends Model {
    
    static associate(models) {
      TiposDeProfissional.belongsTo(models.Profissional, {
        foreignKey: 'descricao'
      })
    }
  }
  TiposDeProfissional.init({
    descricao: DataTypes.STRING,
    situacao: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'TiposDeProfissional',
  });
  return TiposDeProfissional;
};