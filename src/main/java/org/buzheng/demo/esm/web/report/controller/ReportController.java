package org.buzheng.demo.esm.web.report.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Author: liushuijun
 * @Email : liushuijun@passiontec.cn
 * @Since:2018/07/12 16:36
 * @Description
 */
@Controller
public class ReportController {

    @RequestMapping("report/echart")
    public String echartIndes(){
        System.out.println("-----------------------图表展示");
        return "report/echart";
    }
}
