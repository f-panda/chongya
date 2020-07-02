function table() {

    if (document.getElementById("hang").value == "" || document.getElementById("hang").value.search("^[0-9]*$") == -1) {
        document.getElementById("errmsg1").style.display = "block";//判断payNum是否为空或不是数字    提示错误
        document.getElementById("errmsg1").innerHTML = "提示信息：行数为空或不是数字！";
    }else if(document.getElementById("lie").value == "" || document.getElementById("lie").value.search("^[0-9]*$") == -1){
        document.getElementById("errmsg2").style.display = "block";//判断payNum是否为空或不是数字    提示错误
        document.getElementById("errmsg2").innerHTML = "提示信息：列数为空或不是数字！";
    }
    else {
        document.getElementById("errmsg1").style.display = "none";//隐藏提示信息
        document.getElementById("errmsg2").style.display = "mall";//隐藏提示信息
        var Num1 = parseInt(document.getElementById("hang").value); //获取分期数
        var Num2 = parseInt(document.getElementById("lie").value); //获取分期数
        var flag = true;
        var data = "";
        data += " <table >";
        for (var i = 0; i <= Num1-1; i++) {
            data += "<tr >";
            for (var j = 0; j <= Num2-1; j++){

                data += "<td><input name='CollDay"+i+j+"' type='text' size='10' class='INPUT' value='1'></td>";
            }
            data += "</tr>";
        }

        data += "</table>";
        document.getElementById("div1").style.display = "block";
        document.getElementById("table1").innerHTML = data;
    }

}