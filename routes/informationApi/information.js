const router = require('koa-router')();
router.prefix('/information')

const informationDAO=require('../../model/informationDAO');

router.get('/', async (ctx, next) => {
    try{
        let jsondata = await informationDAO.getInformation();
        ctx.set('content-type','application/json')
         ctx.body={"code": 200, "message": "ok", data:jsondata};
    }catch(err){
         ctx.body ={"code": 500, "message": err.toString(), data:[]};
    }

})

module.exports=router;