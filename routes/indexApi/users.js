const router = require('koa-router')()
const usersDAO = require('../../model/usersDAO')
const usersController = require('../../controllers/usersController')
router.prefix('/');
router.post('/',async (ctx,next)=>{
    // ctx.body = '登录，注册';
    await usersController.login(ctx,next)
});
// router.get('/useryz',async (ctx,next)=>{
//     let jsondata = await usersDAO.login();
//     ctx.body = {"code":200,"message":"ok",data:jsondata};
// })
router.post('/add',async (ctx,next)=>{
    await usersController.addUser(ctx,next)
});

module.exports = router;