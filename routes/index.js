const router = require('koa-router')()
const home= require('../routes/indexApi/home')
const settings= require('../routes/indexApi/settings')
const users= require('../routes/indexApi/users')
const admin= require('../routes/adminApi/admin')
const share= require('../routes/shareApi/share')

//资讯攻略导入路由
const strateRouter=require('../routes/strategyApi/strategy')
const strDetailsRouter=require('../routes/strategyApi/strateDetails')
const infoRouter=require('../routes/informationApi/information')
const infoDetailsRouter=require('../routes/informationApi/infoDetails')

//装备导入路由
const bike=require('../routes/bikeApi/bike')
const order=require('../routes/bikeApi/order')
const shoppingcart=require('../routes/bikeApi/shoppingcart')

router.use('/home',home.routes())
router.use('/settings',settings.routes())
router.use('/users',users.routes())
router.use('/admin',admin.routes())
router.use('/share',share.routes())

//资讯攻略使用路由
router.use('/strategy',strateRouter.routes())
router.use('/strateDetails',strDetailsRouter.routes())
router.use('/information',infoRouter.routes())
router.use('/infoDetails',infoDetailsRouter.routes())

//装备使用路由
router.use('/bike',bike.routes())
router.use('/order',order.routes())
router.use('/shoppingcart',shoppingcart.routes())

module.exports = router