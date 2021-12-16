const productsRouter = require('express').Router();
import { Request, Response } from 'express';

interface ProductInfo {
  id_model_color: number;
  quantity: number;
  id_order: number;
}

///////////// PRODUCTS ///////////////

productsRouter.get('/', (req: Request, res: Response) => {
  res.status(200).send('get all products');
});

module.exports = { productsRouter };