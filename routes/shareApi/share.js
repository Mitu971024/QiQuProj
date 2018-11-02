const router = require('koa-router')()
const shareController = require('../../controllers/shareController');

router.prefix('/');
router.get('/', shareController.getAllInfo);         // 获取所有文章
router.get('/details', shareController.getDetails);  // 获取文章详情
router.get('/Comment', shareController.getComment);  // 获取评论信息
router.post('/send', shareController.goSend);        // 发表评论
router.post('/reply', shareController.goReply);      // 回复

module.exports = router;