package com.spring.start.dto.usuario;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UsuarioRequestDto {

	@NotBlank(message = "El nombre no puede estar vacío")
	@Size(min = 3, max = 100, message = "El nombre del usuario debe tener entre 3 y 100 caracteres")
	private String nombre;

	@NotBlank(message = "El correo no puede estar vacío")
	@Email(message = "El email debe tener un formato válido")
	private String email;

	@NotBlank(message = "La contraseña no puede estar vacía")
	@Size(min = 8, message = "La contraseña debe tener un mínimo de 8 caracteres")
	@Pattern(regexp = ".*[A-Z].*", message = "La contraseña debe tener al menos una letra mayúscula")
	@Pattern(regexp = ".*[a-z].*", message = "La contraseña debe tener al menos una letra minúscula")
	@Pattern(regexp = ".*\\d.*", message = "La contraseña debe tener al menos un número")
	@Pattern(regexp = ".*[@#$%^&+=].*", message = "La contraseña debe tener al menos un carácter especial (@#$%^&+=)")
	private String contrasenia;
}
