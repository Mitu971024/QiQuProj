var DAO=require('../model/DAO');

class DB{

     // 获取全部热门数据
        gethotInfo(){
            return DAO('call gethotinformation;',[])
        }
    //获取今日资讯
    gettodayInfo(){
        return DAO('call gettodayInfo;',[])
    }
    //获取骑闻数据
    getnewsInfo(){
        return DAO('call getnewsInfo;',[])
    }
    //获取其他数据
    getotherInfo(){
        return DAO('call getotherInfo;',[])
    }
    //获取详情内容和更新点击量
    getInfoDetails(id){
        return DAO('call infoDetails(?)',[id]);
    }
}

module.exports=new DB();