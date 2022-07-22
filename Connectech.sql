USE t_connection


Select * FROM usuarios

Select * FROM conocimientos

Select * FROM rendimientos

Select * FROM tecnologias

Select * FROM habilidades_blandas

Select * FROM comentarios

Select * FROM connections

Select * FROM logros

Select * FROM imagenes

Select * FROM datos_usuarios

SELECT nombres,apellidos,email,titular,ciudad,idioma,linkedin,github,estudios,sobre_ti
FROM usuarios u
INNER JOIN datos_usuarios du ON du.usuario_id = '4839f2b5-e495-4f2e-b9ed-61e00a8c35e0' AND u.id_usuario = '4839f2b5-e495-4f2e-b9ed-61e00a8c35e0'



SELECT id_usuario,nombres,apellidos,titular,cod_imagen
FROM usuarios u
INNER JOIN datos_usuarios du ON du.usuario_id = u.id_usuario 
INNER JOIN imagenes i  ON i.usuario_id = u.id_usuario
AND u.id_usuario<>'8e47110b-b29e-432c-8d9f-0426cdcb02e3'

SELECT * FROM comentarios WHERE usuario_id = '4839f2b5-e495-4f2e-b9ed-61e00a8c35e0'

DELETE FROM usuarios WHERE id_usuario = '9f5696f3-95da-4c3a-9495-94e036a98bc7'
