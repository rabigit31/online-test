'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class products extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  products.init({
    productName: DataTypes.STRING,
    productImageName: DataTypes.STRING,
    productImageURL: DataTypes.STRING,
    brandName: DataTypes.STRING,
    description: DataTypes.STRING,
    itemCode: DataTypes.STRING,
    itemType: DataTypes.STRING,
    currency: DataTypes.STRING,
    currencyCode: DataTypes.STRING,
    saleAmount: DataTypes.INTEGER,
    brochureFileName: DataTypes.STRING,
    brochureFileURL: DataTypes.STRING,
    productImageURL: DataTypes.STRING,
    vendors: DataTypes.STRING,
    status: DataTypes.INTEGER,
    createdBy: DataTypes.INTEGER,
    updated: DataTypes.INTEGER,
    subCategoryId: DataTypes.INTEGER,
    categoryId: DataTypes.INTEGER,
    uomId: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'products',
  });
  return products;
};