/****** Script for SelectTopNRows command from SSMS  ******/
DELETE FROM Tarea;
DBCC CHECKIDENT ('Tarea', RESEED, 0);
GO

INSERT INTO Tarea (Nombre, Descripcion, Finalizado) VALUES ('Tarea 1', 'Descripci�n de la tarea 1' , 0);
INSERT INTO Tarea (Nombre, Descripcion, Finalizado) VALUES ('Tarea 2', 'Descripci�n de la tarea 2' , 1);
INSERT INTO Tarea (Nombre, Descripcion, Finalizado) VALUES ('Tarea 3', 'Descripci�n de la tarea 3' , 0);
INSERT INTO Tarea (Nombre, Descripcion, Finalizado) VALUES ('Tarea 4', 'Descripci�n de la tarea 4' , 1);
INSERT INTO Tarea (Nombre, Descripcion, Finalizado) VALUES ('Tarea 5', 'Descripci�n de la tarea 5' , 1);
INSERT INTO Tarea (Nombre, Descripcion, Finalizado) VALUES ('Tarea 6', 'Descripci�n de la tarea 6' , 0);
INSERT INTO Tarea (Nombre, Descripcion, Finalizado) VALUES ('Tarea 7', 'Descripci�n de la tarea 7' , 0);
INSERT INTO Tarea (Nombre, Descripcion, Finalizado) VALUES ('Tarea 8', 'Descripci�n de la tarea 8' , 1);
INSERT INTO Tarea (Nombre, Descripcion, Finalizado) VALUES ('Tarea 9', 'Descripci�n de la tarea 9' , 0);
INSERT INTO Tarea (Nombre, Descripcion, Finalizado) VALUES ('Tarea 10', 'Descripci�n de la tarea 10' , 0);
INSERT INTO Tarea (Nombre, Descripcion, Finalizado) VALUES ('Tarea 11', 'Descripci�n de la tarea 11' , 1);
INSERT INTO Tarea (Nombre, Descripcion, Finalizado) VALUES ('Tarea 12', 'Descripci�n de la tarea 12' , 1);
INSERT INTO Tarea (Nombre, Descripcion, Finalizado) VALUES ('Tarea 13', 'Descripci�n de la tarea 13' , 0);
INSERT INTO Tarea (Nombre, Descripcion, Finalizado) VALUES ('Tarea 14', 'Descripci�n de la tarea 14' , 0);
INSERT INTO Tarea (Nombre, Descripcion, Finalizado) VALUES ('Tarea 15', 'Descripci�n de la tarea 15' , 1);
INSERT INTO Tarea (Nombre, Descripcion, Finalizado) VALUES ('Tarea 16', 'Descripci�n de la tarea 16' , 0);
INSERT INTO Tarea (Nombre, Descripcion, Finalizado) VALUES ('Tarea 17', 'Descripci�n de la tarea 17' , 1);
INSERT INTO Tarea (Nombre, Descripcion, Finalizado) VALUES ('Tarea 18', 'Descripci�n de la tarea 18' , 0);
INSERT INTO Tarea (Nombre, Descripcion, Finalizado) VALUES ('Tarea 19', 'Descripci�n de la tarea 19' , 1);
INSERT INTO Tarea (Nombre, Descripcion, Finalizado) VALUES ('Tarea 20', 'Descripci�n de la tarea 20' , 1);
INSERT INTO Tarea (Nombre, Descripcion, Finalizado) VALUES ('Tarea 21', 'Descripci�n de la tarea 21' , 0);
INSERT INTO Tarea (Nombre, Descripcion, Finalizado) VALUES ('Tarea 22', 'Descripci�n de la tarea 22' , 0);
INSERT INTO Tarea (Nombre, Descripcion, Finalizado) VALUES ('Tarea 23', 'Descripci�n de la tarea 23' , 1);