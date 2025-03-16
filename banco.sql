CREATE TABLE Cliente 
( 
    idCliente INT PRIMARY KEY,  
    Telefone INT,  
    Nome VARCHAR(255) -- Recomendável usar VARCHAR para nomes
); 

CREATE TABLE Funcionario 
( 
    idFuncionario INT PRIMARY KEY,  
    Telefone INT,  
    Nome VARCHAR(255),  
    idCliente INT,
    FOREIGN KEY (idCliente) REFERENCES Cliente (idCliente)
); 

CREATE TABLE Gerente 
( 
    idGerente INT PRIMARY KEY,  
    Telefone INT,  
    Nome VARCHAR(255),  
    idFuncionario INT,
    FOREIGN KEY (idFuncionario) REFERENCES Funcionario (idFuncionario)
); 
