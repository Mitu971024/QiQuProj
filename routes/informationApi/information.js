const router = require('koa-router')();
const informationController=require('../../controllers/informationController')
router.prefix('/information')

// const informationDAO=require('../../model/informationDAO');

router.get('/:zType', async (ctx, next) => {
    // try{
    //     let jsondata = await informationDAO.getInformation(ctx.params.zType);
    //     ctx.set('content-type','application/json')
    //      ctx.body={"code": 200, "message": "ok", data:jsondata};
    // }catch(err){
    //      ctx.body ={"code": 500, "message": err.toString(), data:[]};
    // }
    await informationController.getInformation(ctx,next)
})

module.exports=router;