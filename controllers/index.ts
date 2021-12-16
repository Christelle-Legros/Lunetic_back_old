const Opticians = require('./opticians');
const Colors = require('./colors');
const Models = require('./models');
const Status = require('./status');
const Products = require('./products');
const Orders = require('./orders');

const setupRoutes = (app: any) => {
  app.use('/api/opticians', Opticians.opticiansRouter);
  app.use('/api/colors', Colors.colorsRouter);
  app.use('/api/models', Models.modelsRouter);
  app.use('/api/status', Status.statusRouter);
  app.use('/api/products', Products.productsRouter);
  app.use('/api/orders', Orders.ordersRouter);
};

module.exports = { setupRoutes };
