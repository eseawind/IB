<%@ page contentType="text/html; charset=GB2312"%>
<%
String brno =  request.getParameter("brno");
if(brno!=null){


        new com.witsoft.bean.systemManage.systemTableManage.TableManageBean()
                .setBankPrid(brno, request
                        .getParameterValues("id"));
                        out.println("�������гɹ���");
                        
                        }else{
                        out.println("�������в��ɹ������б��Ϊ�գ�");
                        }
                        %>
                        

