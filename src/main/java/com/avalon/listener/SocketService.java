package com.avalon.listener;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import com.avalon.log.ILog;
 
/** 这个socket主要还是为了 flash的socket
 * @author Evan
 * 
 */
public class SocketService implements ILog{
 
	public static Object locker = new Object();
	private ServerSocket s = null;
	
	////flash跨域访问策略文件
	public static final String CROSSDOMAINFILENAME= "crossdomain.xml";
	//默认策略文件配置
	private String CROSSDOMAIN= "<cross-domain-policy> <site-control permitted-cross-domain-policies=\"all\"/> <allow-access-from domain=\"*\" to-ports=\"*\" /></cross-domain-policy> \0";
	
	/**
	 * 线程池,JDK5 新增
	 */
	private static ExecutorService executorService = null;// 线程池

	public synchronized void initSocketServer() {
	    
	    ///读取配置文件
	    readCrossdomain();
	    
		try {
			if (executorService == null) {
				executorService = Executors.newFixedThreadPool(Runtime
						.getRuntime().availableProcessors() * 20);
			} else {
				return;
			}

			s = new ServerSocket(843);
			Runnable r = new Server();
			Thread t = new Thread(r);
			t.start();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public void readCrossdomain(){
        String tempString = null;  
        try {   
            String url=SocketService.class.getClassLoader().getResource(CROSSDOMAINFILENAME).getPath();
            loggerNormal.info("文件路径："+url);
            BufferedReader bufferReader = new BufferedReader(new FileReader(url));
            String domain="";
            while ((tempString=bufferReader.readLine())!=null){
                domain=domain+tempString;
                //loggerNormal.info(tempString);
                System.out.println(tempString);
            }
            bufferReader.close();
            loggerNormal.info("更新配置文件xml："+domain);
            CROSSDOMAIN=domain;
        } catch (IOException e) {  
           // e.printStackTrace();  
            loggerNormal.info("读取异常，使用默认配置");
        } 
        
        
	}
	
	

	public void closeServer() {
		locker = null;
		if (s != null && !s.isClosed()) {
			try {
				s.close();
				//System.out.println("socket 停止成功");
				loggerNormal.info("socket 停止成功");
			} catch (IOException e) {
				 
			} finally {
				//System.out.println("socket 停止....");
				loggerNormal.info("socket 停止....");
			}
		}
	}

	class Server implements Runnable {

		public void run() {
			try {
			    loggerNormal.info("启动ServerSocket..");
				//System.out.println("启动ServerSocket..");
				while (locker != null) {
					if (s == null || s.isClosed()) {
					 
						continue;
					}
					Socket incoming = s.accept();
					Runnable r = new ThreadClient(incoming);
					executorService.execute(r);
					 
				}
			} catch (Exception e) {
				 
			}

		}

	}

	class ThreadClient implements Runnable {
		private Socket incoming;

		public ThreadClient(Socket s) {
			incoming = s;
		}

		public void run() {
			try {
			    loggerNormal.info("客户端 跨域访问策略");
				//System.out.println("处理线程启动");
				//InputStream i = incoming.getInputStream();
				OutputStream o = incoming.getOutputStream();
				//Scanner s = new Scanner(i);
				PrintWriter p = new PrintWriter(o);
				//这段话就是flash 的 socket 安全策略.做过flex和web交互的同学应该知道
				p.println(CROSSDOMAIN);
				p.flush();
 
			} catch (Exception e) {
				 
			} finally {
				try {
					incoming.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
				
				
				
			}
		}

	}
}
