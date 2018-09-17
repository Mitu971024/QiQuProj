const router = require('koa-router')()
const home= require('../routes/indexApi/home')
const settings= require('../routes/indexApi/settings')
const users= require('../routes/indexApi/users')

router.use('/home',home.routes())
router.use('/settings',settings.routes())
router.use('/users',users.routes())


module.exports = router