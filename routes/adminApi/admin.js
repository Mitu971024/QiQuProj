const router = require('koa-router')()
const adminController=require('../../controllers/adminController')

router.prefix('/')
router.get('/', async (ctx, next) => {
    ctx.body = '我是管理员页面'
})

router.post('/information',async (ctx,next)=>{
    await adminController.AddInformation(ctx,next)
})

router.get('/information/updatetype',async(ctx,next)=>{
    await adminController.UpdateInfoType(ctx,next)
})

router.post('/strategy',async (ctx,next)=>{
    await adminController.AddStrategy(ctx,next);
})

module.exports = router