package com.aspectj.demo.test;


public aspect AnnotationPC {
	private long ts ;
	pointcut PackagePointCut() : execution(* com.aspectj..*test*(..));  
	pointcut PublicMethodPointCut() : execution(public * *(..) );  
	pointcut AopPointCut() : execution(@Aop * *(..));  
    
    
    before() : AopPointCut(){  
    	ts = System.currentTimeMillis();
        System.out.println("AnnotationPC " +  thisJoinPoint.getSourceLocation());  
    }  
    after(): AopPointCut(){
    	System.out.println("AnnotationPC" +  thisJoinPoint.getSourceLocation() + "time Comsumed:" + (System.currentTimeMillis() - ts) + " ms ");  
    }
}
