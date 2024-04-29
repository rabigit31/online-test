const models = require('../models/');
const commonLib = require('../lib/commonLib');

const productList = async (req, res, next) => {
    let postData = req.body;
    if (postData.currentPage == undefined) {
        postData.currentPage = 1
    }
    if (postData.pageSize == undefined) {
        postData.pageSize = 10
    }
    if (postData.orderBy == undefined) {
        postData.orderBy = 'createdAt'
    }
    if (postData.orderDir == undefined) {
        postData.orderDir = 'desc'
    }
    if (postData.orderDir == undefined) {
        postData.orderDir = 'desc'
    }
    if (postData.searchBy == undefined) {
        postData.searchBy = ''
    }
    if (postData.searchFields == undefined) {
        postData.searchFields = "";
    }
    try {
        let offset = (parseInt(postData.currentPage) - 1) * parseInt(postData.pageSize);
        let limit = parseInt(postData.pageSize);
        let fiterset = {};
        if (postData.searchBy) {
            fiterset = {
                productName: {
                    [models.Op.like]: `%${postData.searchBy}%`
                }
            };
        }


        let products = await models.products.findAll({
            logging: console.log,
            attributes: postData.searchFields,
            where: fiterset,
            order: [
                [postData.orderBy, postData.orderDir]
            ],
            offset,
            limit
        });
        products = await commonLib.toPlain(products);

        let productsCount = await models.products.count({
            where: fiterset,
        });
        const totalPage = Math.ceil(productsCount / limit);
        return res.status(200).json({
            currentPage: postData.currentPage,
            pageSize: postData.pageSize,
            totalPages: totalPage,
            totalCount: productsCount,
            data: products

        });
    } catch (err) {
        console.log("err--", err)
        return res.status(404).json(err);
    }

};

module.exports = {
    productList
}