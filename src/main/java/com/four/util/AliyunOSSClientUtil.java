package com.four.util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;  
import java.io.File;  
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.UUID;


import org.apache.commons.io.FilenameUtils;
import org.apache.log4j.Logger;
import org.springframework.web.multipart.MultipartFile;

import com.aliyun.oss.OSSClient;  
import com.aliyun.oss.model.Bucket;  
import com.aliyun.oss.model.OSSObject;  
import com.aliyun.oss.model.ObjectMetadata;  
import com.aliyun.oss.model.PutObjectResult;  
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;  
/**
 * 使用阿里云OSS存储对象上传图片 
 */
public class AliyunOSSClientUtil {
	
	/**
	 * 阿里云注册用户基本常量  
	 */
	
	//log日志  
    public static Logger logger = Logger.getLogger(AliyunOSSClientUtil.class);

    //阿里云API的内或外网域名
    public static String ENDPOINT = "oss-cn-beijing.aliyuncs.com";

    //阿里云API的密钥Access Key ID
    public static String ACCESS_KEY_ID	= "LTAIAr1rXd5PhrNX";

    //阿里云API的密钥Access Key Secret
    public static String ACCESS_KEY_SECRET	= "yUVzMd5Kx56yk1k8CHUEfEhNx9PYXS";

    //阿里云API的bucket名称
    public static String BACKET_NAME = "zmm18417";

    //阿里云API的文件夹名称
    public static String FOLDER ="wdd/";


    /**
     * 获取阿里云OSS客户端对象 
     * @return ossClient 
     */
    public static  OSSClient getOSSClient(){  
        return new OSSClient(ENDPOINT,ACCESS_KEY_ID, ACCESS_KEY_SECRET);  
    }  
  
    /**
     * 创建存储空间 
     * @param ossClient      OSS连接 
     * @param bucketName 存储空间 
     * @return 
     */
    public  static String createBucketName(OSSClient ossClient,String bucketName){  
        //存储空间  
        final String bucketNames=bucketName;  
        if(!ossClient.doesBucketExist(bucketName)){  
            //创建存储空间  
            Bucket bucket=ossClient.createBucket(bucketName);  
            logger.info("创建存储空间成功");  
            return bucket.getName();  
        }  
        return bucketNames;  
    }  
      
    /**
     * 删除存储空间buckName 
     * @param ossClient  oss对象 
     * @param bucketName  存储空间 
     */
    public static  void deleteBucket(OSSClient ossClient, String bucketName){    
        ossClient.deleteBucket(bucketName);     
        logger.info("删除" + bucketName + "Bucket成功");    
    }    
      
    /**
     * 创建模拟文件夹 
     * @param ossClient oss连接 
     * @param bucketName 存储空间 
     * @param folder   模拟文件夹名如"qj_nanjing/" 
     * @return  文件夹名 
     */
    public  static String createFolder(OSSClient ossClient,String bucketName,String folder){  
        //文件夹名   
        final String keySuffixWithSlash =folder;  
        //判断文件夹是否存在，不存在则创建  
        if(!ossClient.doesObjectExist(bucketName, keySuffixWithSlash)){  
            //创建文件夹  
            ossClient.putObject(bucketName, keySuffixWithSlash, new ByteArrayInputStream(new byte[0]));  
            logger.info("创建文件夹成功");  
            //得到文件夹名  
            OSSObject object = ossClient.getObject(bucketName, keySuffixWithSlash);  
            String fileDir=object.getKey();  
            return fileDir;  
        }  
        return keySuffixWithSlash;  
    }  
      
     /**
        * 根据key删除OSS服务器上的文件   
        * @param ossClient  oss连接 
        * @param bucketName  存储空间  
        * @param folder  模拟文件夹名 如"qj_nanjing/" 
        * @param key Bucket下的文件的路径名+文件名 如："upload/cake.jpg" 
        */
	   public static void deleteFile(OSSClient ossClient, String bucketName, String folder, String key){      
	        ossClient.deleteObject(bucketName, folder + key);     
	        logger.info("删除" + bucketName + "下的文件" + folder + key + "成功");    
	   }   
      
    /**
     * 上传图片至OSS 
     * @param ossClient  oss连接 
     * @param file 上传文件（文件全路径如：D:\\image\\cake.jpg） 
     * @param bucketName  存储空间 
     * @param folder 模拟文件夹名 如"qj_nanjing/" 
     * @return String 返回的唯一MD5数字签名 
     * */
    public static  String uploadObject2OSS(OSSClient ossClient, File file, String bucketName, String folder) {  
        String resultStr = null;  
        try {  
            //以输入流的形式上传文件  
            InputStream is = new FileInputStream(file);  
            //文件名  
            String fileName = file.getName();   
            //文件大小  
            Long fileSize = file.length();   
            //创建上传Object的Metadata    
            ObjectMetadata metadata = new ObjectMetadata();  
            //上传的文件的长度  
            metadata.setContentLength(is.available());    
            //指定该Object被下载时的网页的缓存行为  
            metadata.setCacheControl("no-cache");   
            //指定该Object下设置Header  
            metadata.setHeader("Pragma", "no-cache");    
            //指定该Object被下载时的内容编码格式  
            metadata.setContentEncoding("utf-8");    
            //文件的MIME，定义文件的类型及网页编码，决定浏览器将以什么形式、什么编码读取文件。如果用户没有指定则根据Key或文件名的扩展名生成，  
            //如果没有扩展名则填默认值application/octet-stream  
            metadata.setContentType(getContentType(fileName));    
            //指定该Object被下载时的名称（指示MINME用户代理如何显示附加的文件，打开或下载，及文件名称）  
            metadata.setContentDisposition("filename/filesize=" + fileName + "/" + fileSize + "Byte.");    
            //上传文件   (上传文件流的形式)  
            PutObjectResult putResult = ossClient.putObject(bucketName, folder + fileName, is, metadata);    
            //解析结果  
            resultStr = putResult.getETag();  
        } catch (Exception e) {  
            e.printStackTrace();  
             logger.error("上传阿里云OSS服务器异常." + e.getMessage(), e);    
        }  
        return resultStr;  
    }  
  
    /**
     * 通过文件名判断并获取OSS服务文件上传时文件的contentType 
     * @param fileName 文件名 
     * @return 文件的contentType 
     */
    public static  String getContentType(String fileName){  
        //文件的后缀名  
        String fileExtension = fileName.substring(fileName.lastIndexOf("."));  
        if(".bmp".equalsIgnoreCase(fileExtension)) {  
            return "image/bmp";  
        }  
        if(".gif".equalsIgnoreCase(fileExtension)) {  
            return "image/gif";  
        }  
        if(".jpeg".equalsIgnoreCase(fileExtension) || ".jpg".equalsIgnoreCase(fileExtension)  || ".png".equalsIgnoreCase(fileExtension) ) {  
            return "image/jpeg";  
        }  
        if(".html".equalsIgnoreCase(fileExtension)) {  
            return "text/html";  
        }  
        if(".txt".equalsIgnoreCase(fileExtension)) {  
            return "text/plain";  
        }  
        if(".vsd".equalsIgnoreCase(fileExtension)) {  
            return "application/vnd.visio";  
        }  
        if(".ppt".equalsIgnoreCase(fileExtension) || "pptx".equalsIgnoreCase(fileExtension)) {  
            return "application/vnd.ms-powerpoint";  
        }  
        if(".doc".equalsIgnoreCase(fileExtension) || "docx".equalsIgnoreCase(fileExtension)) {  
            return "application/msword";  
        }  
        if(".xml".equalsIgnoreCase(fileExtension)) {  
            return "text/xml";  
        }  
        //默认返回类型  
        return "image/jpeg";  
    }  
      
    //测试  
    public static void main(String[] args) {  
    	
        //初始化OSSClient  
        OSSClient ossClient=AliyunOSSClientUtil.getOSSClient();  
        //上传文件  
        String files="C:\\Users\\lenovo\\Desktop\\1.png";
        String[] file=files.split(",");  
        for(String filename:file){  
            File filess=new File(filename);  
            String md5key = AliyunOSSClientUtil.uploadObject2OSS(ossClient, filess, BACKET_NAME, FOLDER);    
            logger.info("上传后的文件MD5数字唯一签名:" + md5key);    
        }  
       
    }  
    
    //file是缓存文件,fileNameFileName是上传的文件名
  public static String GreatBeauty(File file,String fileNameFileName){
    	FileInputStream fis;
    	PutObjectResult putObject;
    	String url = "";
    	
		try {
			
			fis = new FileInputStream(file);
			
			String newFileName = UUID.randomUUID().toString().replace("-", "") + "."+FilenameUtils.getExtension(fileNameFileName);
			
			// 创建OSSClient实例
	        OSSClient client = new OSSClient(ENDPOINT, ACCESS_KEY_ID, ACCESS_KEY_SECRET);
	        
	        putObject = client.putObject(BACKET_NAME,FOLDER+ newFileName,fis);
	        
	        // 关闭client
	        client.shutdown();
	        fis.close();
	        
	        String eTag = putObject.getETag();	//MD5
	        url = BACKET_NAME+"."+ENDPOINT+"/"+FOLDER+newFileName;
		} catch (Exception e) {
			
		}
    	return "https://"+url;
    }
    
    
    public static String GreatBeauty(MultipartFile file,String fileNameFileName){
    	InputStream in = null;
        PutObjectResult putObject;
        String url = "";
    	if (!file.isEmpty()) {
            try {
                in = file.getInputStream();
                String newFileName = UUID.randomUUID().toString().replace("-", "") + "."+FilenameUtils.getExtension(fileNameFileName);
    			
    			// 创建OSSClient实例
    	        OSSClient client = new OSSClient(ENDPOINT, ACCESS_KEY_ID, ACCESS_KEY_SECRET);
    	        
    	        putObject = client.putObject(BACKET_NAME,FOLDER+ newFileName,in);

                // 关闭client
    	        client.shutdown();
    	        in.close();
    	        
    	        String eTag = putObject.getETag();	//MD5
    	        url = BACKET_NAME+"."+ENDPOINT+"/"+FOLDER+newFileName;
                System.out.println(url);

            } catch (Exception e) {
            }
           
        }


    return "https://"+url;
    }
    
    //通过真实路径上传阿里云
    public static String abc(String realurl){
   	 OSSClient ossClient=AliyunOSSClientUtil.getOSSClient();
   	 String files= realurl;
        String[] file=files.split(","); 
        
        String urls = "";
        for(String filename:file){  
            File filess=new File(filename);  
            String md5key = AliyunOSSClientUtil.uploadObject2OSS(ossClient, filess, BACKET_NAME, FOLDER);    
            logger.info("上传后的文件MD5数字唯一签名:" + md5key); 
            String url = BACKET_NAME+"."+ENDPOINT+"/"+FOLDER+
            		files.substring(files.lastIndexOf("/")+1, files.length());
            urls += ","+url;
        }
        if(urls.indexOf(",") >= 0 ){
       	 urls = urls.substring(1);
        }
		return  urls;
   }
    
    //获取下载文件的图片名称//包含文件夹
    public static String getOssKey (String filename){
  		/*String prefix = AliyunOSSClientUtil.BACKET_NAME+"."+AliyunOSSClientUtil.ENDPOINT+"/"+AliyunOSSClientUtil.FOLDER;
  		filename =  filename.replace(prefix, "");	*/
    	if(filename.indexOf("https://") >= 0 ){
    		filename =  filename.replace("https://", "");
    	}
    	String substring = filename.substring(filename.indexOf("/")+1);
  		//filename = filename.substring(filename.lastIndexOf("/")+1);
    	return substring;
  	}
    
    //获取下载文件的bucket名称
    public static String getBucket(String fileNameFileName){
    	if(fileNameFileName.indexOf("https://") >= 0 ){
    		fileNameFileName =  fileNameFileName.replace("https://", "");
    	}
    	fileNameFileName = fileNameFileName.substring(0,fileNameFileName.indexOf("."));
    	return fileNameFileName;
    }
    
    //
    public static String pupil(String fileNameFileName,HttpServletRequest request,HttpServletResponse response){
    	try {
	    	
	    	OSSClient ossClient=AliyunOSSClientUtil.getOSSClient();
	    	//2个参数,第一个是bucket名称,第二个参数是要下载的文件在bucket下面的具体路径
	    	String bucket = AliyunOSSClientUtil.getBucket(fileNameFileName);
	    	String ossKey = AliyunOSSClientUtil.getOssKey(fileNameFileName);
	    	OSSObject ossObject = ossClient.getObject(bucket, ossKey);
	    	//读取Object内容  返回
	    	BufferedInputStream in=new BufferedInputStream(ossObject.getObjectContent());
	    	
	        BufferedOutputStream out=new BufferedOutputStream(response.getOutputStream());
	        //通知浏览器以附件形式下载  
	        response.setHeader("Content-Disposition","attachment;filename="+URLEncoder.encode(AliyunOSSClientUtil.getOssKey(fileNameFileName),"utf-8"));
	        //BufferedOutputStream out=new BufferedOutputStream(new FileOutputStream(new File("f:\\a.txt")));
	
	        byte[] car=new byte[1024];
	        int L=0;
	        while((L=in.read(car))!=-1){
	        	out.write(car, 0,L);
	        }
	        if(out!=null){
	            out.flush();
	            out.close();
	        }
	        if(in!=null){
	            in.close();
	        }
	        ossClient.shutdown();

    	} catch (Exception e) {
    		e.printStackTrace();
    	}
    	return null;
    }
    
    
}