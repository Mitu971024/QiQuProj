const router = require('koa-router')();
const strateController=require('../../controllers/strategyController')
router.prefix('/')

// const strategyDAO=require('../../model/strategyDAO');

router.get('/:sId',async (ctx,next)=>{
    await strateController.getStrDetails(ctx,next)
})

module.exports=router;