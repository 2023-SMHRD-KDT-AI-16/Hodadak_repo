package com.Laform.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.mysql.cj.jdbc.AbandonedConnectionCleanupThread;


public class MyAppContextListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        // 애플리케이션 시작 시 로직
        System.out.println("Application Initialized");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        // 애플리케이션 종료 시 로직
        System.out.println("Application Destroyed");
        AbandonedConnectionCleanupThread.checkedShutdown();
    }
}