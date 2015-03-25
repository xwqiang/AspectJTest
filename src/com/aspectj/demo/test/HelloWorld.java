package com.aspectj.demo.test;
public class HelloWorld {
	public static void main(String[] args) throws Exception {
		test();
		test11();
	}
	@Aop
	public static void test() throws InterruptedException{
		System.out.println("...test.....");
		Thread.sleep(1000);
	}
	@Aop
	public static void test11() throws InterruptedException{
		System.out.println("...test11.....");
		Thread.sleep(1000);
	}
}
