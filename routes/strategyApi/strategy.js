const router = require('koa-router')();
router.prefix('/strategy')

const strategyDAO=require('../../model/strategyDAO');

router.get('/', async (ctx, next) => {
    try{
        let jsondata = await strategyDAO.getStrategy();
        // ctx.set('content-type','application/json')
        ctx.body={"code": 200, "message": "ok", data:jsondata};
        // await ctx.render('strategy',{data:jsondata})
    }catch (err) {
    ctx.body ={"code": 500, "message": err.toString(), data:[]};
    // await ctx.render('strategy',{data:err.toString()})
    // console.log(err)
}

})
module.exports=router;




