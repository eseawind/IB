<%@ page contentType="text/html;charset=GBK"%>

<%@ page import="org.jfree.data.general.DefaultPieDataset"%>

<%@ page import="org.jfree.chart.JFreeChart"%>

<%@ page import="org.jfree.chart.plot.PiePlot"%>

<%@ page import="org.jfree.chart.ChartRenderingInfo"%>

<%@ page import="org.jfree.chart.servlet.ServletUtilities"%>

<%@ page import="org.jfree.chart.entity.StandardEntityCollection"%>


<%

DefaultPieDataset data = new DefaultPieDataset();

data=(DefaultPieDataset)request.getAttribute("data");
String title=(String)request.getAttribute("title");

PiePlot plot = new PiePlot(data);

JFreeChart chart = new JFreeChart("", JFreeChart.DEFAULT_TITLE_FONT, plot, true);

chart.setBackgroundPaint(java.awt.Color.white);  //��ѡ������ͼƬ����ɫ

chart.setTitle(title); //��ѡ������ͼƬ����

 


ChartRenderingInfo info = new ChartRenderingInfo(new StandardEntityCollection());

//500��ͼƬ���ȣ�300��ͼƬ�߶�

String filename = ServletUtilities.saveChartAsPNG(chart, 500, 300, info, session);

String graphURL = request.getContextPath() + "/servlet/DisplayChart?filename=" + filename; 

 


%>

<HTML>

<HEAD>

       <TITLE>Welcome to Jfreechart !</TITLE>

</HEAD>

<BODY>

<P ALIGN="CENTER">

<img src="<%= graphURL %>" width=500 height=300 border=0 usemap="#<%= filename %>">

</P>

</BODY>

</HTML>
