var xzid = 0;

window.onload = function () {
    //sessionStorage["dlzt"] = "yes";
    //sessionStorage["yhm"] = "admin2";
    //sessionStorage["xuexiao"] = "测试2";
    //huanye(0);
    //alert(document.querySelectorAll("div.souye>div").length);
    if (sessionStorage["dlzt"] == "yes") {
        var divyh = document.querySelector("div.yh");
        var divyhimg = divyh.querySelector("div.yhimg");
        var divyha = divyh.querySelector("a");

        divyhimg.style.backgroundImage = 'url("../img/beijing.jpg")';
        divyha.href = "../页面/个人信息.aspx";
        divyha.innerHTML = sessionStorage["yhm"];

        var divsouye = document.querySelector("div.souye");
        var divsouyea = divsouye.querySelectorAll("a");

        if (sessionStorage["yhjb"] == "教务人员") {
            divsouyea[0].href = "课程-教师录入.aspx";
            divsouyea[1].href = "班级-教室录入.aspx";
        } else {
            divsouyea[0].href = "javascript:alert('无权限录入');";
            divsouyea[1].href = "javascript:alert('无权限录入');";
        }
        divsouyea[2].href = "课表生成及其管理.aspx";
        //sessionStorage["syid"] = 1;
        //alert(sessionStorage["syid"])
        if (sessionStorage["syid"] != undefined) {
            //alert("a");
            huanye(Number(sessionStorage["syid"]));
            //sessionStorage["syid"] = undefined;
        }
    }
}

function huanye(i) {
    //return;
    if (i == xzid) {
        
        return;
    }

    var topa = document.querySelectorAll("div.topcen a");
    for (var ind = 0; ind < topa.length; ind++) {
        if (ind == i) {
            topa[ind].className = "xz";
        } else {
            topa[ind].className = null;
        }
    }
    var divsouye = document.querySelectorAll("div.souye>div");
    divsouye[xzid].style.animation = "xs .3s both linear";

    setTimeout(function () {
        divsouye[xzid].style.display = "none";
        divsouye[i].style.display = "block";
        divsouye[i].style.animation = "cx .3s both linear";
        
        xzid = i;
    }, 300); 
    
    

    
}

function axzi(i) {
    sessionStorage["axzi"] = i;
}