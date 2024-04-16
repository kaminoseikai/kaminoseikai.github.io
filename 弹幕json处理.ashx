<%@ WebHandler Language="C#" Class="弹幕json处理" %>

using System;
using System.Web;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.IO;
using System.Text;
using System.Windows;

public class 弹幕json处理 : IHttpHandler {

    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        string json = context.Server.UrlDecode(context.Request.Form.ToString());
        JObject job = JObject.Parse(json);
        JObject jobnew = new JObject();
        jobnew["add"] = job["sy"];
        string str = addjson(job["name"].ToString(), jobnew);
        //string jsonfile = Environment.CurrentDirectory + "\\" + job["name"].ToString();
        //string jsonfile = "D:\\qmsy\\历史用\\历史用\\" + job["name"].ToString();
        //string jsonString = File.ReadAllText(jsonfile, Encoding.Default);//读取文件D:\qmsy\qmsy
        //JObject jobject = JObject.Parse(jsonString);//解析成json
        //string str = jobject.ToString();
        context.Response.Write(str);
    }

    public bool IsReusable {
        get {
            return false;
        }
    }

    public string addjson(string filename,JObject addjob)
    {
        //string jsonfile =filename;
        string jsonString = "D:\\qmsy\\历史用\\历史用\\" + filename;
        if (File.Exists(jsonString))
        {
            //string jsonString = File.ReadAllText(jsonfile, Encoding.Default);//读取文件
            //string jsonString ="D:\\qmsy\\历史用\\历史用\\" + jsonfile;//读取文件
            string jsonString1 = File.ReadAllText(jsonString, Encoding.Default);
            JObject jobject = JObject.Parse(jsonString1);//解析成json
            jobject["sy"] = addjob["add"];//替换需要的文件
            string convertString = Convert.ToString(jobject);//将json装换为string
            File.WriteAllText(jsonString, convertString);//将内容写进jon文件中
            return "yes";
        }
        else
        {
            return "no";
        }

    }

}



