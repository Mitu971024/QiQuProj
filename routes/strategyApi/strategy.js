const router = require('koa-router')();
const strateController=require('../../controllers/strategyController')
router.prefix('/strategy')

// const strategyDAO=require('../../model/strategyDAO');

router.get('/:sType', async (ctx, next) => {
//     try{
//         let jsondata = await strategyDAO.getStrategy(ctx.params.sType);
//         ctx.set('content-type','application/json')
//         ctx.body={"code": 200, "message": "ok", data:jsondata};
//     }catch (err) {
//     ctx.body ={"code": 500, "message": err.toString(), data:[]};
// }
    await strateController.getStrategy(ctx,next)

})
module.exports=router;




