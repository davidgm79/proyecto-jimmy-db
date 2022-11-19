Create database Sistema_ventas;
Use Sistema_ventas;

Create table Rol(
	Id_rol int not null,
    primary key (Id_rol),
	Descripcion varchar(50),
	Fecha_creacion date 
);

Create table Permiso(
	Id_permiso int not null,
    Id_rol int not null,
	Nombre_menu varchar (100),
	Fecha_creacion date,
    PRIMARY KEY (Id_permiso),
	FOREIGN KEY (Id_rol) REFERENCES Rol(Id_rol)
);

Create table Proveedor(
	Id_proveedor int not null,
    PRIMARY KEY (Id_proveedor),
	Documento varchar (50),
	Razon_social varchar (50),
	Correo varchar (50),
	Telefono bigint,
	Estado varchar (50),
	Fecha_creacion date
);

Create table Cliente(
	Id_cliente int not null,
    PRIMARY KEY (Id_cliente),
	Documento varchar (50),
	Nombre_cliente varchar (50),
	Correo varchar (50),
	Telefono bigint,
	Estado varchar (50),
	Fecha_creacion date
);

Create table Usuario(
	Id_usuario int not null,
    Id_rol int not null,
    PRIMARY KEY (Id_usuario),
	Documento varchar (50),
	Nombre_usuario varchar (50),
	Correo varchar (50),
	Clave varchar (50),
	FOREIGN KEY (Id_rol) REFERENCES Rol(Id_rol),
	Estado varchar (50),
	Fecha_creacion date
);

Create table Compra(
	Id_compra int not null,
	PRIMARY KEY (Id_compra),
    Id_usuario int not null,
    Id_proveedor int not null,
    FOREIGN KEY (Id_usuario) REFERENCES Usuario(Id_usuario),
    FOREIGN KEY (Id_proveedor) REFERENCES Proveedor(Id_proveedor),
	Tipo_documento varchar (50),
	Numero_documento varchar (50),
	Monto_total decimal(10,2),
	Fecha_creacion date
);

Create table Detalle_compra(
	Id_detalle_compra int not null,
    PRIMARY KEY (Id_detalle_compra),
    Id_compra int not null,
    FOREIGN KEY (Id_compra) REFERENCES Compra(Id_compra),
    Id_producto int not null,
	Precio_compra decimal(10,2),
	Precio_venta decimal(10,2),
	Cantidad int,
	Total varchar (50),
	Fecha_creacion date,
    FOREIGN KEY (Id_producto) REFERENCES Producto(Id_producto)
);

Create table Categoria(
	Id_categoria int not null,
    PRIMARY KEY (Id_categoria),
	Descripcion varchar (100),
	Estado varchar (50),
	Fecha_creacion date
);

Create table Producto(
	Id_producto int not null,
    PRIMARY KEY (Id_producto),
	Codigo varchar (50),
	Nombre varchar (50),
	Descripcion varchar (50),
    Id_categoria int not null,
    FOREIGN KEY (Id_categoria) REFERENCES Categoria(Id_categoria),
    Id_proveedor int not null,
    FOREIGN KEY (Id_proveedor) REFERENCES Proveedor(Id_proveedor),
	Stock int not null default (0),
	Precio_compra decimal(10,2) default (0),
	Precio_venta decimal(10,2) default (0),
	Estado varchar (50),
	Fecha_creacion date
);

Create table Venta(
	Id_venta int not null,
    PRIMARY KEY (Id_venta),
    Id_usuario int not null,
    FOREIGN KEY (Id_usuario) REFERENCES Usuario(Id_usuario),
    Id_cliente int not null,
    FOREIGN KEY (Id_cliente) REFERENCES Cliente(Id_cliente),
	Tipo_documento varchar (50),
	Numerno_documento varchar (50),
	Documento_cliente varchar (50),
	Nombre_cliente varchar (50),
	Monto_pago decimal(10,2),
	Monto_cambio decimal(10,2),
	Monto_total decimal(10,2),
	Fecha_creacion date
);

Create table Detalle_venta(
	Id_detalle_venta int not null,
    PRIMARY KEY (Id_detalle_venta),
    Id_venta int not null,
    FOREIGN KEY (Id_venta) REFERENCES Venta(Id_venta),
	Id_producto int not null,
    FOREIGN KEY (Id_producto) REFERENCES Producto(Id_producto),
	Precio_venta decimal(10,2),
	Cantidad int, 
	Sub_total decimal(10,2),
	Fecha_creacion date
);