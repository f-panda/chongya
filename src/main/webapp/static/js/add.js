function add(id,hot) {
    var  id = parseInt(id);
    var  hot = parseInt(hot);

    $.ajax({
        type : "POST", //提交方式
        url : "/document/add",//路径
        data : {
            "id" : id,
            "hot" :hot
        },
        success:function (data) {


    },});

}