const router=require('koa-router')();
const shoppingcartController=require('../../controllers/shoppingcartController')

router.prefix('/')
router.post('/addOrder',async(ctx,next)=>{
    await shoppingcartController.addOrder(ctx,next);
    // console.log(ctx.request.body)
})

router.post('/deleteOrder',async(ctx,next)=>{
    await shoppingcartController.deleteOrder(ctx,next);
})

router.post('/confirmOrder',async(ctx,next)=>{
    await shoppingcartController.confirmOrder(ctx,next);
    //console.log(ctx.request.body)
})
module.exports=router