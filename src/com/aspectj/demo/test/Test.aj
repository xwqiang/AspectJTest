package com.aspectj.demo.test;


public aspect Test {
	private long ts ;
	pointcut HelloWorldPointCut() : execution(* com.aspectj..*test*(..));  
	pointcut PublicMethodPointCut() : execution(public * *(..) );  
	pointcut AopPointCut() : execution(@Aop * *(..));  
    
    
    before() : HelloWorldPointCut(){  
    	ts = System.currentTimeMillis();
        System.out.println("before " +  thisJoinPoint.getSourceLocation());  
    }  
    after(): HelloWorldPointCut(){
    	System.out.println("after" +  thisJoinPoint.getSourceLocation());  
    	System.err.println("time Comsumed:" + (System.currentTimeMillis() - ts) + " ms ");
    }
}
