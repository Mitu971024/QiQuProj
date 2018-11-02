var usersDAO = require('../model/usersDAO')
const crypto = require('crypto')

module.exports = {
    addUser:async (ctx,next)=>{
        const hash = crypto.createHash('md5');
        hash.update(ctx.request.body.mPassword);
        var pwd = hash.digest('hex');
        let user = { }
        user.mLogin = ctx.request.body.mLogin;
        user.mPassword = pwd;

        var jsondata = await usersDAO.findUser(user)
        if (jsondata.length!=0) {
            ctx.body = {"code":500,"message":"ok",data:0}
        }else{
            try{
                await usersDAO.addUser(user)
                ctx.body = {"code":200,"message":"ok",data:1}
            }catch (err) {
                ctx.body = {"code":500,"message":err.toString(),data:[]}
            }
        }

    }
    ,
    login:async (ctx,next)=>{
        const hash = crypto.createHash('md5');
        hash.update(ctx.request.body.mPassword);
        var pwd = hash.digest('hex');
        let user = { };
        user.mLogin = ctx.request.body.mLogin;
        user.password = pwd;
        try{
            let jsondata = await usersDAO.login();
            for (var i = 0 ; i < jsondata.length ;i++){
                if(jsondata[i].mLogin == user.mLogin) {
                    if (jsondata[i].mPassword == user.password) {
                        ctx.body = {"code": 200, "message": "1", data:jsondata[i]};
                        return;
                    }else {
                        ctx.body = {"code": 200, "message": "ok", data:3};
                        return;
                    }
                }
            }
            ctx.body = {"code": 200, "message": "ok", data:2};
        }catch (err) {
            ctx.body = {"code":500,"message":err.toString(),data:[]}
        }

    },
}