const opticiansRouter = require('express').Router();
import { Request, Response } from 'express';

interface OpticianInfo {
  firstname: string;
  lastname: string;
  company: string;
  address: string;
  other_address: string;
  postal_code: string;
  city: string;
  email: string;
  mobile_phone: string;
  password: string;
  website: string;
  home_phone: string;
  finess_code: string;
  siret: string;
  vat_number: string;
}

///////////// OPTICIAN ///////////////

opticiansRouter.get('/', (req: Request, res: Response) => {
  res.status(200).send('get all opticians');
});

opticiansRouter.get('/:id_optician', (req: Request, res: Response) => {
  const { id_optician } = req.params;
  res.status(200).send('get user for id_optician ' + id_optician);
});

opticiansRouter.post('/', (req: Request, res: Response) => {
  const optician: OpticianInfo = req.body;
  res.status(200).send('post optician');
});

opticiansRouter.put('/:id_optician', (req: Request, res: Response) => {
  const { id_optician } = req.params;
  res.status(200).send('put optician for id_optician ' + id_optician);
});

opticiansRouter.delete('/:id_optician', (req: Request, res: Response) => {
  const { id_optician } = req.params;
  res.status(200).send('delete optician for id_optician ' + id_optician);
});

module.exports = { opticiansRouter };
