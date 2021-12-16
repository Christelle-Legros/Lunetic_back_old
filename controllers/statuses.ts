const statusRouter = require('express').Router();
import { Request, Response } from 'express';

interface statusInfo {
  name: string;
}

///////////// PRODUCTS ///////////////

statusRouter.get('/', (req: Request, res: Response) => {
  res.status(200).send('get all status');
});

module.exports = { statusRouter };