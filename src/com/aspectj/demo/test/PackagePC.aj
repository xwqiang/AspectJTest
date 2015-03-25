package com.aspectj.demo.test;


public aspect PackagePC {
	pointcut PackagePointCut() : execution(* com.aspectj..*test*(..));  
	pointcut PublicMethodPointCut() : execution(public * *(..) );  
	pointcut AopPointCut() : execution(@Aop * *(..));  
    
    
    before() : PackagePointCut(){  
        System.out.println("PackagePointCut " +  thisJoinPoint.getSourceLocation());  
    }  
    after(): PackagePointCut(){
    	System.out.println("PackagePointCut" +  thisJoinPoint.getSourceLocation());  
    }
}
