const router = require('koa-router')()
const usersDAO = require('../../model/usersDAO')
const usersController = require('../../controllers/usersController')
router.prefix('/');
router.post('/',async (ctx,next)=>{
    // ctx.body = '登录，注册';
    await usersController.login(ctx,next)
});
router.post('/userPhone',async (ctx,next)=>{
    await usersController.userPhone(ctx,next)
});
router.post('/add',async (ctx,next)=>{
    await usersController.addUser(ctx,next)
});

module.exports = router;