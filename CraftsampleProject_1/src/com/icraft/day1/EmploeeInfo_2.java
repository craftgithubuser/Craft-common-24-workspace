package com.icraft.day1;

import java.util.Scanner;

public class EmploeeInfo_2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner in = new Scanner(System.in); 
		
		System.out.println("Please enter firstName:");
		String firstName = in.next();
		
		System.out.println("please enter lastName:");
		String lastName = in.next();
		
		System.out.println("please enter age:");
	    int age = in.nextInt();
		
		System.out.println("please enter gender:");
		char gender = in.next().charAt(0);
		
		System.out.println("please enter salary:");
		double salary = in.nextDouble();
		
		System.out.println("please enter bonus:");
		double bonus = in.nextDouble();
		
		
		double totalsalary = salary + bonus;
		
        System.out.println("Employee full name: " +  firstName + " " + lastName);
		
		System.out.println("Employee Age: " + age);
		
		System.out.println("Employee Salary: " + salary);
		
		System.out.println("Employee Gender: " + gender);
		
		System.out.println("Employee Bonus: " + bonus);
		
		System.out.println("Employee Totalsalary: " + totalsalary);
		
		

	}

}
