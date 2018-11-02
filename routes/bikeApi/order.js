const router=require('koa-router')();
const orderController=require('../../controllers/orderController')
const orderDAO=require('../../model/orderDAO')

router.prefix('/')

router.post('/addexp',async(ctx,next)=>{
    await orderController.addExp(ctx,next);
})

router.post('/showexp',async(ctx,next)=>{
    try {
        let data = await orderDAO.showExp();
        ctx.body = {"code": 200, "message": "ok", data: data}
    } catch (err) {
        ctx.body = {"code": 500, "message": err.toString(), data: []}
    }
})

router.post('/addorder',async(ctx,next)=>{
    await orderController.addOrder(ctx,next);
})

router.post('/showorder',async(ctx,next)=>{
    try {
        let data = await orderDAO.showOrder();
        ctx.body = {"code": 200, "message": "ok", data: data}
    } catch (err) {
        ctx.body = {"code": 500, "message": err.toString(), data: []}
    }
})

module.exports=router