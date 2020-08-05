class BaseMsg {
    constructor(data,message) {
        //add ok
        if (typeof data==="string"){
            this.message = data;
            data = null;
            message = null;
        }
        //user {id:1,name:"admin"},add ok
        if (data){
            this.data = data;
        }
        if(message){
            this.message = message;
        }
    }
}
class SuccessMsg extends BaseMsg{
    constructor(data,message) {
        super(data,message);
        this.errNo = 0;
    }
}
class ErrMsg extends BaseMsg{
    constructor(data,message) {
        super(data,message);
        this.errNo = -1;
    }
}
module.exports={SuccessMsg,ErrMsg};