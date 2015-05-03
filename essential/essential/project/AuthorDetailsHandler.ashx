﻿<%@ WebHandler Language="C#" Class="AuthorDetailsHandler" %>

using System;
using System.Web;
using System.Net;
using System.IO;

public class AuthorDetailsHandler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        string finalResponse = String.Empty;

        string url1 = "https://www.goodreads.com/author/show/" + context.Request["author_id"];
        string urlquery = url1 + ".xml?key=" + context.Request["key"];

        HttpWebRequest request = (HttpWebRequest)WebRequest.Create(urlquery);
        HttpWebResponse response = (HttpWebResponse)request.GetResponse();

        using (Stream str = response.GetResponseStream())
        {
            using (StreamReader rdr = new StreamReader(str))
            {
                finalResponse = rdr.ReadToEnd();
            }

        }
        context.Response.ContentType = "text/xml";
        context.Response.Write(finalResponse);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}