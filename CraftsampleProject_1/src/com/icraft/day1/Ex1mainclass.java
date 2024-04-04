package com.icraft.day1;

import java.util.Scanner;

public class Ex1mainclass {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
       Scanner in = new Scanner(System.in); 
		
		System.out.println(" enter your Name: ");
		String name = in.next();
		
		System.out.println(" Name: " + name);
		
		
		System.out.println(" enter age: ");
	    int i = in.nextInt();
	    System.out.println(" Age: " + i);
	   
		
		System.out.println(" enter salary: ");
		double d = in.nextDouble();
		System.out.println(" Salary: " + d);
		
		
		
	}

}
