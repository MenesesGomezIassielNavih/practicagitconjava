package com.example.practica_con_git;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class PracticaConGitApplication {

	public String saludar(){
		return "Hola mundo!";
	}

	public String saludarConBuilder(){
		StringBuilder sb = new StringBuilder();
		return sb.append("Hola con builder").toString();
	}

	public Integer suma(){
		return 5+5;
	}

	public Integer multiplicar(int a, int b){
		return a * b;
	}

	public static void main(String[] args) {
		SpringApplication.run(PracticaConGitApplication.class, args);

		PracticaConGitApplication objeto1 = new PracticaConGitApplication();
		System.out.println(objeto1.saludar());
		System.out.println("Suma: " + objeto1.suma());
		System.out.println("Multiplicacion: " + objeto1.multiplicar(4, 3));
	}
}