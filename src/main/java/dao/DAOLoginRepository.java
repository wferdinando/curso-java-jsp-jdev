package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connection.SingleConnectionBanco;
import models.ModelLogin;

public class DAOLoginRepository {

	private Connection connection;

	public DAOLoginRepository() {
		connection = SingleConnectionBanco.getConnection();
	}
	
	
	/*Validação do Login*/
	public boolean validarAutenticacao(ModelLogin modelLogin) throws Exception {
		
		String sql = "SELECT login, senha FROM model_login WHERE UPPER(login) = UPPER(?) AND UPPER(senha) = UPPER(?) ";
		
		PreparedStatement statement = connection.prepareStatement(sql);
		statement.setString(1, modelLogin.getLogin());
		statement.setString(2, modelLogin.getSenha());
		
		ResultSet resultSet = statement.executeQuery();
		
		if(resultSet.next()) {
			return true; /*Autenticado*/
		}
		
		return false; /*Não Auntenticado*/
	}

}
