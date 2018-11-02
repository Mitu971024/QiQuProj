const router = require('koa-router')();
const strateController=require('../../controllers/strategyController')
router.prefix('/')

// const strategyDAO=require('../../model/strategyDAO');

router.get('/way', async (ctx, next) => {
    await strateController.getwayStrategy(ctx,next)
})

router.get('/class', async (ctx, next) => {
    await strateController.getclassStrategy(ctx,next)
})

router.get('/recommend', async (ctx, next) => {
    await strateController.getrecStrategy(ctx,next)
})

module.exports=router;
