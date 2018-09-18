const router = require('koa-router')();
const informationController=require('../../controllers/informationController')
router.prefix('/')

// const informationDAO=require('../../model/informationDAO');

router.get('/:zId',async (ctx,next)=>{
    await informationController.getInfoDetails(ctx,next)
})

module.exports=router;