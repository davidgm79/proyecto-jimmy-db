INSERT INTO Rol (Id_rol,Descripcion,Fecha_creacion)
VALUES ('01','gerente general','2022-01-11'),
       ('02','contador general','2022-11-11'),
	   ('03','bodeguista','2022-01-11'),
       ('04','lider de ventas','2022-01-11');
       
INSERT INTO Permiso (Id_permiso,Id_rol,Nombre_menu,Fecha_creacion)
VALUES ('05','01','menu gerencia','2022-01-11'),
	   ('06','02','menu contaduria','2022-01-11'),
       ('07','03','menu bodega','2022-01-11'),
       ('08','04','menu ventas','2022-01-11');

INSERT INTO Proveedor (Id_proveedor,Documento,Razon_social,Correo,Telefono,Estado,Fecha_creacion)
VALUES ('09','012254415','persona natural','steamcuenta2000a@gmail.com','3006001762','activo','2022-01-11'),
       ('10','974554218','persona juridica','lonasyherrajes@yahoo.es','3108118318','activo','2022-01-11'),
       ('11','987420511','persona natural','milreatas@yahoo.com','3133016810','activo','2022-01-11'),
       ('12','144456000','persona natural','herrajesherrera@nottempmail.co','7852189','activo','2022-01-11');

INSERT INTO Cliente (Id_cliente,Documento,Nombre_cliente,Correo,Telefono,Estado,Fecha_creacion)
VALUES ('13','057167982','andrea trujillo','6c246f6240@inboxmail.life','7302363','activo','2022-01-11'),
       ('14','303518067','pierre gignac','eltiopierre@outlook.com','3893560','activo','2022-01-11'),
       ('15','570751682','sebastian vettel','sebastiangodttel@gmail.com','40619781','activo','2022-01-11'),
       ('16','004521300','daniel ricciardo','daniric3@hotmail.com','7915715','activo','2022-01-11');

INSERT INTO Usuario (Id_usuario,Id_rol,Documento,Nombre_usuario,Correo,Clave,Estado,Fecha_creacion)
VALUES ('17','01','71450096','walter_graciano1','walterg@crearsport.com','bew2lCDZxE','activo','2022-01-11'),
       ('18','02','43868299','amparo_martinez2','amparom@crearsport.com','RsxTjNSvV9','activo','2022-01-11'),
       ('19','03','10016205','k_mag20','kmagfirstpole@crearsport.com','CVWSbkSWE','activo','2022-01-11'),
       ('20','04','20018985','nico_hulk27','nicohulk27back@crearsport.com','d5ZkYy1Bel','activo','2022-01-11');

INSERT INTO Compra (Id_compra,Id_usuario,Id_proveedor,Tipo_documento,Numero_documento,Monto_total,Fecha_creacion)
VALUES ('21','17','09','factura','0145','1200000','2022-01-11'),
       ('22','18','10','factura','0146','1000000','2022-01-11'),
       ('23','19','11','factura','0147','652000','2022-01-11'),
       ('24','20','12','factura','0148','990000','2022-01-11');

INSERT INTO Detalle_compra (Id_detalle_compra,Id_compra,Id_producto,Precio_compra,Precio_venta,Cantidad,Total,Fecha_creacion)
VALUES ('25','21','33','20000','40000','15','600000','2022-01-11'),
       ('26','22','34','25000','45000','22','990000','2022-01-11'),
       ('27','23','35','30000','60000','30','1800000','2022-01-11'),
       ('28','24','36','29000','55000','40','2200000','2022-01-11'); 

INSERT INTO Categoria (Id_categoria,Descripcion,Estado,Fecha_creacion)
VALUES ('29','morral doble chapa','activo','2022-01-11'),
       ('30','morral pequeño','activo','2022-01-11'),
       ('31','morral de viaje','activo','2022-01-11'),
       ('32','2 compartimientos','activo','2022-01-11');

INSERT INTO Producto (Id_producto,Codigo,Nombre,Descripcion,Id_categoria,Id_proveedor,Stock,Precio_compra,Precio_venta,Estado,Fecha_creacion)
VALUES ('33','R031','chapas2','morral doble chapa','29','09','70','20000','40000','activo','2022-01-11'),
       ('34','R042','pequeño','morral pequeño','30','10','80','25000','45000','activo','2022-01-11'),
       ('35','R077','viajero','morral de viaje','31','11','40','30000','60000','activo','2022-01-11'),
       ('36','R030','canguro','2 compartimientos','32','12','90','29000','55000','activo','2022-01-11');

INSERT INTO Venta (Id_venta,Id_usuario,Id_cliente,Tipo_documento,Numerno_documento,Documento_cliente,Nombre_cliente,Monto_pago,Monto_cambio,Monto_total,Fecha_creacion)
VALUES ('37','17','13','facura venta','3311','057167982','andrea trujillo','3100000','10000','3090000','2022-01-11'),
       ('38','18','14','facura venta','4720','303518067','pierre gignac','2450000','5000','2445000','2022-01-11'),
       ('39','19','15','facura venta','0524','570751682','sebastian vettel','1250000','2000','1248000','2022-01-11'),
       ('40','20','16','facura venta','7877','004521300','daniel ricciardo','5200000','20000','5180000','2022-01-11'); 

INSERT INTO Detalle_venta (Id_detalle_venta,Id_venta,Id_producto,Precio_venta,Cantidad,Sub_total,Fecha_creacion)
VALUES ('41','37','33','40000','50','2000000','2022-01-11'),
       ('42','38','34','45000','35','1575000','2022-01-11'),
       ('43','39','35','60000','40','2400000','2022-01-11'),
       ('44','40','36','55000','25','1375000','2022-01-11');
       
select max(Monto_total) from Compra;

select sum(Stock) from Producto;

select min(Monto_total) from Compra;

select avg(Monto_total) from Compra;

select * from Producto order by Precio_venta ASC;

select * from Cliente inner join Categoria on Cliente.Estado = Categoria.Estado;