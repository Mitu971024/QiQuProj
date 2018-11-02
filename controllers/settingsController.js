var settingsDAO = require('../model/settingsDAO');
const crypto = require('crypto')

module.exports = {
    getOneUser:async (ctx,next)=>{
        var id = {}
        id.mId = ctx.request.body.mId
        try{
            let jsondata = await settingsDAO.getOneUser(id);
            ctx.body = {"code":200,"message":"ok",data:jsondata};
        }catch (err) {
            ctx.body = {"code":500,"message":err.toString(),data:[]}
        }
    },
    modUser:async (ctx,next)=>{

        let user = { };

        user.mName = ctx.request.body.mName;
        user.mSex = ctx.request.body.mSex;
        user.mCity = ctx.request.body.mCity;
        user.mAge = ctx.request.body.mAge;
        user.mHeight = ctx.request.body.mHeight;
        user.mWigth = ctx.request.body.mWigth;
        user.mGxqm = ctx.request.body.mGxqm;
        user.mId = ctx.request.body.mId;
        try{
            console.log(user)
            await settingsDAO.modUser(user);
            ctx.body = {"code":200,"message":"ok",data:[]}
        }catch (err) {
            ctx.body = {"code":500,"message":err.toString(),data:[]}
        }
    },
    // modImg:async (str,fields,ctx,next)=>{
    //
    //     let user = {};
    //
    //     user.mImg = str;
    //     user.mId = fields.mId;
    //
    //     try{
    //         console.log(user)
    //         await settingsDAO.modImg(user);
    //         ctx.body='上传成功'
    //     }catch (err) {
    //         ctx.body='上传失败'
    //     }
    // },
    modPwd:async (ctx,next)=>{
        const hash = crypto.createHash('md5');
        hash.update(ctx.request.body.mPassword);
        var pwd = hash.digest('hex');
        let user = { };
        user.mPassword = pwd;
        user.mId = ctx.request.body.mId;
        try{
            console.log(user)
            await settingsDAO.modPwd(user);
            ctx.body = {"code":200,"message":"ok",data:[]}
        }catch (err) {
            ctx.body = {"code":500,"message":err.toString(),data:[]}
        }
    },
    modOther:async (ctx,next)=>{
        let user = { };

        user.mPlace = ctx.request.body.mPlace;
        user.mId = ctx.request.body.mId;
        try{
            console.log(user)
            await settingsDAO.modOther(user);
            ctx.body = {"code":200,"message":"ok",data:[]}
        }catch (err) {
            ctx.body = {"code":500,"message":err.toString(),data:[]}
        }
    }
}