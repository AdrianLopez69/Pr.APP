![](https://itq.edu.ec/wp-content/uploads/2023/02/Recurso-6.png)



| Proyecto Final  |  App SPICETIFY    |
| ------------- | ------------- |
| Nombre Docente | Ing. Sebastian Landazuri  |
| Asignatura | Administrador de Base de datos   |
|Carrera | Desarrollo de software  |
|Semestre | Segundo Semestre |





[TOCM]

##  Proyecto Final App SPICETIFY 


![](https://camo.githubusercontent.com/fe8ffffd9028db226b879830de0d6205b4644e47ed9574e2f5afdeed6672d93e/68747470733a2f2f692e696d6775722e636f6d2f6977634c4954512e706e67)
## Integrantes del Equipo

- Adrian Lopez
- Dario Verdezoto
- Jose Rivadeneira
- Rafael Posligua

## Descripción

La base de datos consiste en un aplicativo móvil de reproducción musical, el cual va a constar con un apartado de registro, inicio de sesión y de autenticación, además de un apartado donde almacenara la música con sus características principales, y de los artistas con sus propios atributos e historia.


## Elementos Principales
1. Gestión de Usuarios: Incluye perfiles de usuarios, autenticación, y preferencias personales.

2. Contenido de la Aplicación: Gestiona datos específicos de la aplicación, como publicaciones, imágenes, y comentarios.

3. Interacciones y Notificaciones: Permite el seguimiento de interacciones entre usuarios y la gestión de notificaciones.



## Comandos

1.-Obtener la lista de usuarios que han realizado más de 5 comentarios en las publicaciones de un artista específico.

    SELECT usu_id, com_contenido, com_respuesta,art_nombre_completo
    FROM comentarios AS c
	RIGHT JOIN usuarios AS u ON usu_id = com_id
	LEFT JOIN artistas AS a ON art_id = art_id

![](https://z-p3-scontent.fuio11-1.fna.fbcdn.net/v/t1.15752-9/420150393_1445050866410469_8638202953828839577_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=8cd0a2&_nc_eui2=AeEfOCZMg0K20PZAf_hV-AhOMaiKaC0T5TkxqIpoLRPlOV2piE81lbgGsVMh7Rh0j4O-wg7zaJtBlyPg_mtvGXcO&_nc_ohc=wvfqwbuRIXsAX-8tGXd&_nc_ht=z-p3-scontent.fuio11-1.fna&oh=03_AdTWL3kDueeo-GeCse6ng0BIx4uD_A2o49ZgNb4Dh7nYlw&oe=65E1DE47)

2.- Encontrar la cantidad total de reproducciones de una canción específica en el último mes.

    SELECT COUNT(lir_nombre) AS Reproducciones
	FROM listas_reproducciones;
![](https://scontent.xx.fbcdn.net/v/t1.15752-9/418777097_760492482171331_6547566503569936529_n.png?_nc_cat=110&ccb=1-7&_nc_sid=510075&_nc_eui2=AeEjRarGwUlxIIu9Md4I8ugUtoKC-Ad2xpW2goL4B3bGlTWlCg1OVwaDJrhILvmoM6lckQcBr3w0wr00qe2egCP8&_nc_ohc=xs7MfubtDIoAX82DUHb&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AdQghAV96UhSwo6GAztajojgt1GpGduP4K_fX42w4O6BnA&oe=65E21D32)
3.- Obtener el nombre de los artistas que tienen al menos una canción con una calificación promedio superior a 4.5.

	SELECT DISTINCT art_nombre_completo,art_calificacion
	FROM artistas 
	WHERE art_calificacion > 4.5;

![](https://scontent.xx.fbcdn.net/v/t1.15752-9/418923153_318901593914930_1051550952689760933_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=510075&_nc_eui2=AeGFrhEDjWw7m6cwlVJlh1nUV7-axBFXWM1Xv5rEEVdYzQUIh0ffMLwduepOs6uYmxpkjYR15MMV1YvHJqKhYgNm&_nc_ohc=yBZ8IRDYREYAX_ESYjZ&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AdTsFUz1fMOG4htpEyOho92HZklWcBz1gXHw3sdEMe5dSQ&oe=65E2394F)
4.- Mostrar la cantidad de notificaciones enviadas por cada usuario en el último trimestre.

    SELECT not_usuarios_id, COUNT(*) AS cantidad_notificaciones FROM notificaciones 
	WHERE not_fecha_envio >= DATE_SUB(NOW(), INTERVAL 3 MONTH) GROUP BY not_id;
![](https://scontent.xx.fbcdn.net/v/t1.15752-9/417255903_881736957083613_5363295496561603328_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=510075&_nc_eui2=AeFWYDw1XvHqeNF1ZhXTJ0Kw6_H7fqSSkCfr8ft-pJKQJ3Pcr662ITEps6tKvKvHiYDKMEa5gtnGm6roV3Yyh6Z6&_nc_ohc=8W5Zz_Tb0WIAX9A_7OU&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AdRlZgx0JGbZ0f8jMPJoUkFcz9QbEQaxmiuFacJrqzg0ZQ&oe=65E22078)
5.- Encontrar la canción más reproducida en cada género musical presente en la aplicación.

    SELECT lir_nombre AS mas_reproducida,lir_genero AS genero_musical
	FROM listas_reproducciones
	ORDER BY lir_genero DESC;

![](https://scontent.xx.fbcdn.net/v/t1.15752-9/418901602_700147185624262_8336137836986563441_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=510075&_nc_eui2=AeF7ccLNRKl44qAyqnF8B4fgtNNKF_aZ6TC000oX9pnpMEJrrjYcMuTYbPgg-bu7h3QG6xlXWIxHCFfT7Jziy00G&_nc_ohc=ukOLIt2_OJQAX-MAqY6&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AdTM1CBOJkWRQW-PvMzDCzVUKwJ5Cm5BC_XKlzu_BFjaZw&oe=65E21F91)
6.-Listar los usuarios que han dado "me gusta" a todas las canciones de un artista específico.

    SELECT DISTINCT art_canciones AS Canciones,art_nombre_completo AS Nombre_Artistas,int_tipo AS like_dislike
	FROM artistas, interacciones
	WHERE art_nombre_completo ='The Beatles';
![](https://scontent.xx.fbcdn.net/v/t1.15752-9/421541237_675174338025925_1218892537504865686_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=510075&_nc_eui2=AeE1O0i8pFPHlNQtLFXkGDd19duTecqTcjD125N5ypNyMPpiQwDVQm0eDjaSn1WzqaRz3klr4Rws2BPe80hbAkh_&_nc_ohc=8iZBoUX4ea0AX8MkpmA&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AdQX0TJRr7L84fcHjWNFUM6aPlUDEM0aWD2VLerfj8wycw&oe=65E2372E)
7.- Obtener la cantidad promedio de comentarios por publicación en la última semana.

    SELECT AVG(com_id) AS promedio_comentarios
	FROM comentarios
	WHERE com_fecha_hora >= CURDATE() - INTERVAL 7 DAY
![](https://scontent.xx.fbcdn.net/v/t1.15752-9/421641022_865563621991069_5969354654110105058_n.png?_nc_cat=100&ccb=1-7&_nc_sid=510075&_nc_eui2=AeFeCb-KJWJUSMYYHgrszK_xlHvWa3EEskKUe9ZrcQSyQoZYilhh602dbl5EPsAkLnzX3c1SpxUtAWukRDugq8qT&_nc_ohc=I9rcEiN6iPIAX8SBrqz&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AdRi-4o_c_SfqeX9X9Tf9cD3J5tiqE7OOhfgObwwRAz9ag&oe=65E27CA2)
8.-Encontrar el usuario con más seguidores en común con otro usuario dado.

    SELECT seg_nombre,usu_nombre AS Usuarios
	FROM seguidores,usuarios
	WHERE seg_sobrenombre = 'schastey2'
	ORDER BY seg_id DESC
	LIMIT 5;
![](https://scontent.xx.fbcdn.net/v/t1.15752-9/418981210_1568214807326093_817016023171399881_n.png?_nc_cat=105&ccb=1-7&_nc_sid=510075&_nc_eui2=AeFWcDxWcajwQmNQRtzpqtU91BnY5mUPjhDUGdjmZQ-OEJoqQBm0NqnaMmejcjZXyaGkHdF-5gtVR6Q-Vj0DPCeI&_nc_ohc=N3pE31pHBkYAX94X_za&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AdSWbvIEqgZOYH4gU6R27Hbz2UtqUNe6EbGzU3MU6KFePg&oe=65E25DC3)
9.- Listar los artistas que tienen al menos una canción con más de 1 millón de reproducciones.

    reproducciones: 
	SELECT DISTINCT art_canciones AS Tiempo_Reproduccion, 	art_nombre_completo 
	FROM artistas
	WHERE art_calificacion  > 1000000;
![](https://scontent.xx.fbcdn.net/v/t1.15752-9/418914222_700120688942116_404994575977725087_n.png?_nc_cat=104&ccb=1-7&_nc_sid=510075&_nc_eui2=AeF56LH_MwVwGbUiXQqQ1lEVUxBMlmeC72BTEEyWZ4LvYLNxeXmhoabIZ39ubZHIAbzVB7eUPe7lNSGVK7yRdX7_&_nc_ohc=lH2K_dQEZUsAX90-ERH&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AdR33NdDj42ywGd4dOxN50d0XqjWRn_q8R5gX7xij1yUNQ&oe=65E2637A)
10.-Obtener el promedio de duración de las canciones de un género musical específico.

    SELECT DISTINCT lir_genero AVG,(art_calificacion) AS promedio_duracion
	FROM artistas,listas_reproducciones;
![](https://scontent.xx.fbcdn.net/v/t1.15752-9/418792786_1109523370235100_1693537944457390833_n.png?_nc_cat=104&ccb=1-7&_nc_sid=510075&_nc_eui2=AeHJquP9RH04MaI-bvz9k8IHeGIxYqJD-h94YjFiokP6H2FJBrp1V95mN4pQuCcEqCpny6_y8bu78Fvn_ibD1a22&_nc_ohc=5fZf_v0Q34oAX_NCRBT&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AdRMdErSUBZbeexTMXP6eAq0A3YyAMNz7GMC7XLud-2xbA&oe=65E28F82)
11.- Mostrar la cantidad de notificaciones no leídas para cada usuario.

    SELECT usu_id, COUNT(*) AS cantidad_notificaciones_no_leidas
	FROM notificaciones, usuarios
	WHERE not_mensaje = 0
	GROUP BY usu_id;

![](https://scontent.xx.fbcdn.net/v/t1.15752-9/422102877_712861357494729_7179768542046366364_n.png?_nc_cat=103&ccb=1-7&_nc_sid=510075&_nc_eui2=AeE8YhSnAYu5WqGsz9J5RyYBmdlwrIJN2gmZ2XCsgk3aCbFj0M_IG_fL4o0TmxRsBoR_gLwXOH7Ps8qvPDLJoBcE&_nc_ohc=CKXPudgU6nIAX9-5Vio&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AdTrNhRLlgv5EWr_8m398hhrkrys7Ko1O8yCu8my3_dV_A&oe=65E282CA)
12.- Encontrar las canciones que han sido reproducidas más de 100 veces en un día específico.

    SELECT art_canciones AS Canciones, lir_orden_cancion AS Reproducciones 
	FROM artistas, listas_reproducciones
![](https://scontent.xx.fbcdn.net/v/t1.15752-9/421446892_1356703478310774_1779637261179648855_n.png?_nc_cat=103&ccb=1-7&_nc_sid=510075&_nc_eui2=AeHzD0u5QCiAhpKKlBwK6v8OW2hsCJWxYpVbaGwIlbFilU5CvaNTweWX07dR9piBUh0whDxwnjbLnoPS3WLVCw-w&_nc_ohc=hft11hk36Z0AX_uJPzg&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AdQxAVRp16eKTazfDLB-Z6SyyFW8oQFwXXh3Va2hYaw4hQ&oe=65E27557)
13.- Listar los usuarios que han comentado en más de una publicación en los últimos 7 días.

    GASDGADG
![]()
14.-Obtener el número total de reproducciones para cada artista en el último mes.

    GASDGADG
![]()
15.- Encontrar la canción más reciente de cada artista presente en la aplicación.

    GASDGADG
![]()
16.- Mostrar la cantidad de usuarios que han dado "me gusta" a más de 10 canciones de un género musical específico.

    GASDGADG
![]()
17.-Obtener la lista de usuarios que han iniciado sesión en las últimas 48 horas.

    GASDGADG

![]()
18.-Encontrar la canción con la calificación más alta de todos los tiempos.

    GASDGADG
![]()
19.-Listar las canciones que tienen el mismo título pero pertenecen a diferentes artistas.

    GASDGADG
![]()
20.-Obtener la cantidad total de usuarios registrados en la aplicación.

    SELECT COUNT(*) AS usuarios_registrados FROM registros;

![](https://scontent.fuio1-1.fna.fbcdn.net/v/t1.15752-9/421554772_1409218836356774_4385810430485548757_n.png?_nc_cat=104&ccb=1-7&_nc_sid=8cd0a2&_nc_eui2=AeH3BfOiGT2HK1XO12i_IQ9ExOo7FAf_ucbE6jsUB_-5xj4wIH78udHDuBiWdLpL8B4M4eq1V5-Z5-G1duDz60Wc&_nc_ohc=qOYmlOU6zn4AX_CDMKU&_nc_ht=scontent.fuio1-1.fna&oh=03_AdQ-A3gan5BzphvJt0dCgN09-vf2q7Ks9Swgvt_MEHwy4g&oe=65E297C9)
21.-Encontrar los artistas que han lanzado canciones en cada año desde el inicio de la  aplicación.

    SELECT usu_nombre AS NombreUsuario, COUNT(com_id) AS CantidadComentarios
	FROM usuarios
	JOIN comentarios ON usu_id = com_id
	JOIN publicaciones ON com_id = pub_usuarios_id
	WHERE pub_contenido = 'Pharyngectomy'
	GROUP BY usu_id, usu_nombre;

![](https://scontent.fuio1-1.fna.fbcdn.net/v/t1.15752-9/421935898_753552446283845_1141382505347730045_n.png?_nc_cat=110&ccb=1-7&_nc_sid=8cd0a2&_nc_eui2=AeGPpzammztEjb4IQ9ok2VXCpd-Hah8zLeCl34dqHzMt4BGHJHjDKlfu1MbovWoBymkGDGTpXmqpPr6G0HchVc7J&_nc_ohc=_DucNcP1N7wAX-LMczo&_nc_ht=scontent.fuio1-1.fna&oh=03_AdT1qT_FubWqi0Jqw4VafzZbKEPmv82PecQD4h5t_I5Agg&oe=65E28AD0)
22.-Mostrar la cantidad de comentarios realizados por cada usuario en las canciones de un género específico.

	SELECT usu_nombre AS NombreUsuario, COUNT(com_id) AS CantidadComentarios
	FROM usuarios
	JOIN comentarios ON usu_id = com_id
	JOIN publicaciones ON com_id = pub_usuarios_id
	WHERE pub_contenido = 'Pharyngectomy'
	GROUP BY usu_id, usu_nombre;

![](https://scontent.fuio1-2.fna.fbcdn.net/v/t1.15752-9/418736861_372588228814551_2701067078893209000_n.png?_nc_cat=105&ccb=1-7&_nc_sid=8cd0a2&_nc_eui2=AeGyZofOAWvs3D9xBsj3rnVmq2AsKVMaHzurYCwpUxofO_IIjGK2LOjYlkw1XNc8HTTQ03_qxjDd5keEFAiPFzWe&_nc_ohc=jMTEc-JllAoAX99Yd-F&_nc_ht=scontent.fuio1-2.fna&oh=03_AdQ7EhIsTRdNHbWifZ_laroqhX5IR_RepgCqsm-ZxqZJcw&oe=65E28A1E)
23.-Obtener la canción más antigua de un artista específico.

     SELECT * FROM  publicaciones
	ORDER BY pub_fecha_hora ASC LIMIT 1; 
![](https://scontent.fuio1-1.fna.fbcdn.net/v/t1.15752-9/418867254_416758510799236_1698584922116830067_n.png?_nc_cat=111&ccb=1-7&_nc_sid=8cd0a2&_nc_eui2=AeH_kWx5fQqjZhqyMgzLNZPtMc34yY1CWtsxzfjJjUJa21CWzxSVQ9RfmwH78c1ATXACwKNx0Im4o4pm0AGfhZT0&_nc_ohc=WUcnE2XPyTYAX-bH-mc&_nc_ht=scontent.fuio1-1.fna&oh=03_AdSW2LArx4QZTDLhM2JJiZUOmWsGerMF3KqmUPfqmTZjfg&oe=65E26BAC)
24.-Listar las canciones que han sido reproducidas más de 50 veces y tienen una calificación superior a 4.

	SELECT *
	FROM artistas
	WHERE art_calificacion > 4;
![](https://scontent.fuio1-1.fna.fbcdn.net/v/t1.15752-9/418735697_1337773570954378_6076594988224262075_n.png?_nc_cat=104&ccb=1-7&_nc_sid=8cd0a2&_nc_eui2=AeH6Pds0Bw7DZNzm5Y0L6_bxVFU1_ZSW_UhUVTX9lJb9SLS_QzcwFbvceAco1C5rcpdJ0EmiHsv6jX0KmUL5u3XZ&_nc_ohc=ryTkMtGMfoYAX9UZ5r1&_nc_ht=scontent.fuio1-1.fna&oh=03_AdTCeNsnJFwp2De-CsfbDqsyuqAjxc_pH4S7uqolxvNp7Q&oe=65E27831)
25.Encontrar la fecha y hora de la última reproducción de cada usuario.

    SELECT Usu_nombre AS NombreUsuario, MAX(pub_fecha_hora) AS UltimaReproduccion
	FROM Usuarios
	JOIN publicaciones ON Usu_id = pub_usuarios_id
	GROUP BY Usu_id, Usu_nombre;
![](https://scontent.fuio1-2.fna.fbcdn.net/v/t1.15752-9/417236594_790894212865960_1488552364834850823_n.png?_nc_cat=105&ccb=1-7&_nc_sid=8cd0a2&_nc_eui2=AeFYkn1TSYcXWo1w5pXWVXrGnylr9S57Ii6fKWv1LnsiLs9c2Aw7FD0BvcqU-FXyvDczU413P-fphE-UMww_TcKE&_nc_ohc=9dSVDopuFqQAX83LiM2&_nc_ht=scontent.fuio1-2.fna&oh=03_AdR71A5Y8qHCqDQdd8ay6Z83XID_1T_y-yBPsT8FYsBvGQ&oe=65E279FC)
## Tecnologías Utilizadas
- [MySQL](https://www.mysql.com/products/workbench/) (Versión 8.0.36)
- [Mockaroo](https://www.mockaroo.com/)
- [Editor.md](https://pandao.github.io/editor.md/en.html)
- [Github](https://github.com/)

## Licencia
 GNU GENERAL PUBLIC LICENSE
                       Version 3, 29 June 2007

 Copyright (C) 2007 Free Software Foundation, Inc. <https://fsf.org/>
 Everyone is permitted to copy and distribute verbatim copies
 of this license document, but changing it is not allowed.
