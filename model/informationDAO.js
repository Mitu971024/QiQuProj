var DAO=require('../model/DAO');

class DB{
    //获取全部热门数据
    // getInformation(type){
    //     return DAO('SELECT zTitle,zImg,zContent,zTime,zFrom,zCheck FROM `information` ' +
    //         'where zType=? order by zTime desc,zCheck desc',[type]);
    // }

     // 获取全部热门数据
        gethotInfo(){
            // return DAO('SELECT zTitle,zImg,zContent,zTime,zFrom,zCheck,zType FROM `information` ' +
            //     'where zType="热门资讯" order by zTime desc,zCheck desc',[]);
            return DAO('call gethotinformation;',[])
        }
    //获取今日资讯
    gettodayInfo(){
        // return DAO('SELECT zTitle,zImg,zContent,zTime,zFrom,zCheck,zType FROM `information` ' +
        //     'where zType="今日资讯" order by zTime desc,zCheck desc',[]);
        return DAO('call gettodayInfo;',[])
    }
    //获取骑闻数据
    getnewsInfo(){
        // return DAO('SELECT zTitle,zImg,zContent,zTime,zFrom,zCheck,zType FROM `information` ' +
        //     'where zType="骑闻" order by zTime desc,zCheck desc',[]);
        return DAO('call getnewsInfo;',[])
    }
    //获取其他数据
    getotherInfo(){
        // return DAO('SELECT zTitle,zImg,zContent,zTime,zFrom,zCheck,zType FROM `information` ' +
        //     'where zType="其它" order by zTime desc,zCheck desc',[]);
        return DAO('call getotherInfo;',[])
    }
    //获取详情内容和更新点击量
    getInfoDetails(id){
        return DAO('call infoDetails(?)',[id]);
    }
}

module.exports=new DB();