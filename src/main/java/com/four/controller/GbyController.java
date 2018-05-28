/*
package com.four.controller;

        import com.four.entity.Apartment;
        import com.four.entity.Feature;
        import com.four.service.GbyService;
        import com.four.util.AliyunOSSClientUtil;
        import org.springframework.beans.factory.annotation.Autowired;
        import org.springframework.stereotype.Controller;
        import org.springframework.web.bind.annotation.RequestMapping;
        import org.springframework.web.bind.annotation.RequestMethod;
        import org.springframework.web.bind.annotation.RequestParam;
        import org.springframework.web.bind.annotation.ResponseBody;
        import org.springframework.web.multipart.MultipartFile;

        import java.util.HashMap;
        import java.util.List;
        import java.util.Map;

@Controller
@RequestMapping("gby")
public class GbyController {
    @Autowired
    private GbyService gbyService;

    @RequestMapping("wuyeleixing")
    public String wuyeleixing(){
        return "gby/wuyeleixing";
    }
    //查询物业类型
    @RequestMapping("queryApartment")
    @ResponseBody
    public List<Apartment> queryApartment() {
        List<Apartment> list=gbyService.queryApartment();
        return list;
    }
    //排序
    @RequestMapping("querycount")
    @ResponseBody
    public  Integer querycount(){
        Integer paixu=gbyService.querycount();
        return  paixu;
    }
    //添加
    @RequestMapping("addApartment")
    @ResponseBody
    public  void addApartment(Apartment apartment){

        gbyService.addApartment(apartment);
    }
    //上传图片
    @RequestMapping(value = "/addPicture", method = RequestMethod.POST, produces = "application/json;charset=utf8")
    @ResponseBody
    public  Object addPicture(@RequestParam("file") MultipartFile[] files){
        String greatBeauty = AliyunOSSClientUtil.GreatBeauty(files[0], files[0].getOriginalFilename());
        Map map = new HashMap(1);
        map.put("a",greatBeauty);
        return map;
    }
    //删除
    @RequestMapping("deleteApartment")
    @ResponseBody
    public void deleteApartment(Integer id){
        gbyService.deleteApartment(id);
    }
    //回显
    @RequestMapping("queryById")
    @ResponseBody
    public  Apartment queryById(Integer id){
        return  gbyService.queryById(id);
    }
    //修改
    @RequestMapping("updateApartment")
    @ResponseBody
    public  void  updateApartment(Apartment apartment){
        gbyService.updateApartment(apartment);
    }
    //-------------------------------------------------------------------------------------------------------------------------------------------------
    //查询物业特色设置
    @RequestMapping("queryFeature")
    @ResponseBody
    public List<Feature> queryFeature() {
        List<Feature> list=gbyService.queryFeature();
        return list;
    }
    //排序
    @RequestMapping("querycount1")
    @ResponseBody
    public  Integer querycount1(){
        Integer paixu=gbyService.querycount1();
        return  paixu;
    }
    //查询物业类型
    @RequestMapping("queryApartment1")
    @ResponseBody
    public List<Apartment> queryApartment1() {
        List<Apartment> list=gbyService.queryApartment1();
        return list;
    }
    //查询物业类型
    @RequestMapping("queryApartment2")
    @ResponseBody
    public List<Apartment> queryApartment2() {
        List<Apartment> list=gbyService.queryApartment2();
        return list;
    }
    //添加物业特色
    @RequestMapping("addFeature")
    @ResponseBody
    public  void addFeature(Feature feature){

        gbyService.addFeature(feature);
    }
    //删除
    @RequestMapping("deleteFeature")
    @ResponseBody
    public void deleteFeature(Integer id){
        gbyService.deleteFeature(id);
    }
    //批量删除
    @RequestMapping("deleteswuyetese")
    @ResponseBody
    public void  deleteswuyetese(String ids){
        gbyService.deleteswuyetese(ids);
    }
    //回显
    @RequestMapping("queryByIdwuyetese")
    @ResponseBody
    public Feature queryByIdwuyetese(Integer id){
        Feature gg = gbyService.queryByIdwuyetese(id);
        return gg;
    }
    //修改
    @RequestMapping("updatewuyetese")
    @ResponseBody
    public void updatewuyetese(Feature feature){
        gbyService.updatewuyetese(feature);
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------

    //查询经纪人
    @RequestMapping("queryjingji")
    @ResponseBody
    public List<Map<String,Object>> queryjingji(){
        List<Map<String,Object>>list=gbyService.queryjingji();
        return  list;
    }

}
*/
