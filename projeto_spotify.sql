create table artista (
	id integer primary key autoincrement not null,
	nome text,
	popularidade integer,
	seguidores integer
)

create table musica (
id integer primary key autoincrement not null,
nome text,
url text,
id_artista integer,
foreign key(id_artista) references artista(id)
)

create table genero(
	id integer primary key autoincrement,
	nome text
)

create table pais (
id integer primary key autoincrement not null,
nome text,
sigla text
)

create table genero_artista(
id integer primary key autoincrement not null,
id_genero integer,
id_artista integer,
foreign key(id_genero) references genero(id),
foreign key(id_artista) references artista(id)
)

create table musica_pais (
id integer primary key autoincrement not null,
id_musica integer,
id_pais integer, 
posicao integer, 
streams integer,
foreign key(id_pais) references pais(id),
foreign key(id_musica) references musica(id)
)