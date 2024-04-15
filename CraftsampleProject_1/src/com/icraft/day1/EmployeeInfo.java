package com.icraft.day1;

//import java.util.Scanner;

public class EmployeeInfo {

	public static void main(String[] args) {
		
		//Scanner in = new Scanner(System.in);
		
		// we want to collect employee info
		

		String firstName = "James ";
		String lastName = "bond";
		int age = 50;
		char gender = 'M';

		double salary = 2000.050;
		double bonus =290;
		double totalSalary = salary + bonus;

		// print the result
		System.out.println("Employee full name: " +  firstName + " " + lastName);
		
		System.out.println("Employee Age: " + age);
		
		System.out.println("Employee Salary: " + salary);
		
		System.out.println("Employee Gender: " + gender);
		
		System.out.println("Employee Bonus: " + bonus);
		
		System.out.println("Employee Totalsalary: " + totalSalary);
		

		
	  }

}

