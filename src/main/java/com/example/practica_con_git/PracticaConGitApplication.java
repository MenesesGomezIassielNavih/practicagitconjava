package com.example.practica_con_git;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class PracticaConGitApplication {

	public String saludar(){
		return "Hola mundo!";
	}

	public Integer suma(){
		return 5+5;
	}

	public static void main(String[] args) {
		SpringApplication.run(PracticaConGitApplication.class, args);

		PracticaConGitApplication objeto1 = new PracticaConGitApplication();
		System.out.println(objeto1.saludar());
		System.out.println("La suma es: " + objeto1.suma());
	}

}
