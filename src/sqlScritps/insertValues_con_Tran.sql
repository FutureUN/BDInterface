
-- alter table horario
ALTER TABLE `estetica`.`Empleado` 
CHANGE COLUMN `Emp_direccion` `Emp_direccion` VARCHAR(50) NULL DEFAULT NULL ;


-- Valores tipo horario
INSERT INTO `estetica`.`Tipo horario` (`Tip_id`, `Tip_descripcion`, `Tip_hora_inicio`, `Tip_hora fin`) VALUES ('1', 'Manana', '6', '13');
INSERT INTO `estetica`.`Tipo horario` (`Tip_id`, `Tip_descripcion`, `Tip_hora_inicio`, `Tip_hora fin`) VALUES ('2', 'Tarde', '14', '19');
INSERT INTO `estetica`.`Tipo horario` (`Tip_id`, `Tip_descripcion`, `Tip_hora_inicio`, `Tip_hora fin`) VALUES ('3', 'Descansa', NULL, NULL);
INSERT INTO `estetica`.`Tipo horario` (`Tip_id`, `Tip_descripcion`, `Tip_hora_inicio`, `Tip_hora fin`) VALUES ('4', 'Continuo', '6', '19');



-- change cliente
ALTER TABLE `estetica`.`Cliente` 
CHANGE COLUMN `Cli_telefono` `Cli_telefono` VARCHAR(15) NULL DEFAULT NULL ;
ALTER TABLE `estetica`.`Cliente` 
CHANGE COLUMN `Cli_dieccion` `Cli_direccion` VARCHAR(30) NULL DEFAULT NULL ;
-- alter table protocolo
ALTER TABLE `estetica`.`Protocolo` 
CHANGE COLUMN `Proto_materiales` `Proto_procedimiento` VARCHAR(1000) NULL DEFAULT NULL ;
-- alter table servicio
ALTER TABLE `estetica`.`Servicio` 
ADD COLUMN `Ser_precio` INT NULL AFTER `tipoServicio_idtipoServicio`;

-- values of cliente

INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('62702537', 'Daniela', 'Pinilla', '3105165801', 'Avenida Calle 60 # 172d-29');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('704010959', 'Fernando', 'Guerrero', '3193494733', 'Avenida Calle 7 # 20b-49');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('405417043', 'Camilo', 'Caballero', '3055466998', 'Calle 166 # 168e-45');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('441571117', 'Fernando', 'Lu', '3110363466', 'Transversal 22 # 144c-15');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('921321515', 'Diego', 'Caballero', '3109159538', 'Calle 8 # 82d-3');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('288780392', 'Cayde', 'Pedraza', '3104183774', 'Avenida Calle 125 # 70a-6');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('988069734', 'Juana', 'Pulido', '3124244202', 'Transversal 13 # 6j-38');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('19879192', 'Laura', 'Sierra', '3017374406', 'Calle 151 # 105i-36');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('476586407', 'Fernando', 'Bonilla', '3124408015', 'Avenida Calle 36 # 70a-12');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('325333924', 'Camilo', 'Ramirez', '3111107699', 'Avenida Calle 161 # 178a-48');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('609336869', 'Fernando', 'Sanchez', '3058533544', 'Calle 21 # 149a-34');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('54818788', 'Carolina', 'Pulido', '3110819267', 'Transversal 159 # 12a-13');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('85879612', 'Fernando', 'Castaneda', '3124310151', 'Calle 105 # 19h-9');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('409528346', 'Rafael', 'Wu', '3193810119', 'Carrera 124 # 22f-7');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('118420492', 'Ellie', 'Pulido', '3058861933', 'Avenida Calle 56 # 128j-36');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('21905457', 'Fernando', 'Bautista', '3121751205', 'Calle 142 # 12c-47');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('703991272', 'Andrea', 'Guerrero', '3014208559', 'Avenida Calle 20 # 2f-24');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('159073405', 'Daniela', 'Guerrero', '3018655982', 'Transversal 177 # 168d-33');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('72150530', 'Valentina', 'Trujillo', '3117928255', 'Transversal 6 # 118f-33');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('715619284', 'Juliana', 'Trujillo', '3115239346', 'Carrera 30 # 120e-4');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('761003039', 'Sebastian', 'Sierra', '3113331973', 'Calle 176 # 36i-1');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('428307283', 'Diego', 'Lu', '3196092389', 'Carrera 71 # 67d-36');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('810125750', 'Daniela', 'Jimenez', '3128591391', 'Avenida Calle 117 # 176c-44');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('98691221', 'Cayde', 'Caballero', '3013432702', 'Avenida Calle 76 # 2f-32');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('441373880', 'Cayde', 'Pulido', '3120063958', 'Calle 57 # 169h-38');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('81331413', 'Juana', 'Pineda', '3103977732', 'Carrera 83 # 49h-40');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('130264770', 'Ellie', 'Guerrero', '3059257171', 'Calle 30 # 75i-2');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('241990347', 'Lorena', 'Pineda', '3051523168', 'Calle 69 # 124h-37');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('65276902', 'Sebastian', 'Castaneda', '3115746864', 'Transversal 13 # 156h-35');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('253658740', 'Alberto', 'Sierra', '3111809100', 'Transversal 29 # 16c-8');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('1002322788', 'Juliana', 'Lu', '3111615606', 'Transversal 7 # 74c-29');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('58646194', 'Han', 'Pinilla', '3000621235', 'Calle 80 # 22a-3');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('404425994', 'Fernando', 'Guzman', '3110848505', 'Transversal 144 # 16e-31');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('684437323', 'Andrea', 'Castaneda', '3017312628', 'Carrera 115 # 45i-32');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('250376254', 'Diego', 'Jimenez', '3002029320', 'Avenida Calle 166 # 144b-4');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('606867357', 'Valentina', 'Jimenez', '3101892766', 'Calle 4 # 138f-31');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('759337646', 'Diego', 'Sierra', '3018120085', 'Avenida Calle 136 # 130h-27');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('869715285', 'Carolina', 'Caballero', '3100257170', 'Carrera 139 # 39h-16');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('996761124', 'Carolina', 'Pinilla', '3055840645', 'Carrera 103 # 84e-27');
INSERT INTO `estetica`.`Cliente` (`Cli_cc`, `Cli_nombre`, `Cli_apellido`, `Cli_telefono`, `Cli_direccion`) VALUES ('190595679', 'Michael', 'Ramirez', '3003573211', 'Carrera 93 # 85a-33');

-- insert values in proveedor	

INSERT INTO `estetica`.`Proveedor` (`Prov_id`, `Prov_nombre`, `Prov_tipo`, `Prov_telefono`) VALUES ('1', 'Avene', 'Externo', '7823744');
INSERT INTO `estetica`.`Proveedor` (`Prov_id`, `Prov_nombre`, `Prov_tipo`, `Prov_telefono`) VALUES ('2', 'Laboratorios Skywalker', 'Propio', '4352345');
INSERT INTO `estetica`.`Proveedor` (`Prov_id`, `Prov_nombre`, `Prov_tipo`, `Prov_telefono`) VALUES ('3', 'DermaPiel', 'Externo', '3423535');
INSERT INTO `estetica`.`Proveedor` (`Prov_id`, `Prov_nombre`, `Prov_tipo`, `Prov_telefono`) VALUES ('4', 'PielPro', 'Externo', '2354235');
INSERT INTO `estetica`.`Proveedor` (`Prov_id`, `Prov_nombre`, `Prov_tipo`, `Prov_telefono`) VALUES ('5', 'LarasLab', 'Propio', '2342343');
INSERT INTO `estetica`.`Proveedor` (`Prov_id`, `Prov_nombre`, `Prov_tipo`, `Prov_telefono`) VALUES ('6', 'DermaMakia', 'Externo', '3434243');
INSERT INTO `estetica`.`Proveedor` (`Prov_id`, `Prov_nombre`, `Prov_tipo`, `Prov_telefono`) VALUES ('7', 'MD', 'Externo', '9834988');
INSERT INTO `estetica`.`Proveedor` (`Prov_id`, `Prov_nombre`, `Prov_tipo`, `Prov_telefono`) VALUES ('8', 'LCS', 'Propio', '2342342');
INSERT INTO `estetica`.`Proveedor` (`Prov_id`, `Prov_nombre`, `Prov_tipo`, `Prov_telefono`) VALUES ('9', 'ComoColaDeBebe', 'Externo', '3423435');
INSERT INTO `estetica`.`Proveedor` (`Prov_id`, `Prov_nombre`, `Prov_tipo`, `Prov_telefono`) VALUES ('10', 'LabDer', 'Propio', '3432432');
INSERT INTO `estetica`.`Proveedor` (`Prov_id`, `Prov_nombre`, `Prov_tipo`, `Prov_telefono`) VALUES ('11', 'DermaLab', 'Propio', '3423423');
INSERT INTO `estetica`.`Proveedor` (`Prov_id`, `Prov_nombre`, `Prov_tipo`, `Prov_telefono`) VALUES ('12', 'BellezaCorp', 'Extenro', '2312312');
INSERT INTO `estetica`.`Proveedor` (`Prov_id`, `Prov_nombre`, `Prov_tipo`, `Prov_telefono`) VALUES ('13', 'Avon', 'Externo', '34234234');
INSERT INTO `estetica`.`Proveedor` (`Prov_id`, `Prov_nombre`, `Prov_tipo`, `Prov_telefono`) VALUES ('14', 'ArBeYCu', 'Externo', '3423423');
INSERT INTO `estetica`.`Proveedor` (`Prov_id`, `Prov_nombre`, `Prov_tipo`, `Prov_telefono`) VALUES ('15', 'Cremitas', 'Externo', '4545324');
INSERT INTO `estetica`.`Proveedor` (`Prov_id`, `Prov_nombre`, `Prov_tipo`, `Prov_telefono`) VALUES ('16', 'DSx', 'Propio', '3434223');
INSERT INTO `estetica`.`Proveedor` (`Prov_id`, `Prov_nombre`, `Prov_tipo`, `Prov_telefono`) VALUES ('17', 'BeSpeed', 'Propio', '3423432');
INSERT INTO `estetica`.`Proveedor` (`Prov_id`, `Prov_nombre`, `Prov_tipo`, `Prov_telefono`) VALUES ('18', 'Cientificos de la belleza', 'Propio', '2342342');
INSERT INTO `estetica`.`Proveedor` (`Prov_id`, `Prov_nombre`, `Prov_tipo`, `Prov_telefono`) VALUES ('19', 'BELAB', 'Externo', '9834905');
INSERT INTO `estetica`.`Proveedor` (`Prov_id`, `Prov_nombre`, `Prov_tipo`, `Prov_telefono`) VALUES ('20', 'Shampoositos', 'Externo', '3423523');

-- insert values in tipoServicio

INSERT INTO `estetica`.`tipoServicio` (`idtipoServicio`, `tServ_nombre`) VALUES ('1', 'Rituales de relajación');
INSERT INTO `estetica`.`tipoServicio` (`idtipoServicio`, `tServ_nombre`) VALUES ('2', 'Facial');
INSERT INTO `estetica`.`tipoServicio` (`idtipoServicio`, `tServ_nombre`) VALUES ('3', 'Tratamiento de moldeamiento figura');
INSERT INTO `estetica`.`tipoServicio` (`idtipoServicio`, `tServ_nombre`) VALUES ('4', 'Depilacion');
INSERT INTO `estetica`.`tipoServicio` (`idtipoServicio`, `tServ_nombre`) VALUES ('5', 'Peluqueria');

-- insert values into protocolo
INSERT INTO `estetica`.`Protocolo` (`Proto_id`, `Proto_procedimiento`, `Proto_ubicacion`, `Proto_medidas`, `Proto_recomend`) VALUES ('1', 'Se efectúa en una sesión, donde se realiza un masaje con aceites, aromas y música, en zonas de tensión específica del cuerpo; dura 45 minutos.', 'Sala de masajes', 'No aplicar mucha fuerza en zonas sensibles', 'Ninguna');
INSERT INTO `estetica`.`Protocolo` (`Proto_id`, `Proto_procedimiento`, `Proto_ubicacion`, `Proto_medidas`, `Proto_recomend`) VALUES ('2', 'Para empezar el masaje, colócate a un lado del paciente y vierte en una de tus manos un poco de aceite o crema. Seguidamente, frota ambas manos para calentar el producto y lograr que no esté tan frío en el momento de aplicarlo sobre su espalda.', 'Sala de masajes', 'No aplicar mucha fuerza', 'Utilizar aceite en lugar de crema');
INSERT INTO `estetica`.`Protocolo` (`Proto_id`, `Proto_procedimiento`, `Proto_ubicacion`, `Proto_medidas`, `Proto_recomend`) VALUES ('3', 'Es una terapia manual destinada a producir una serie de reacciones fisiológicas controladas, en el sistema musculoesqueletico y/u otros sistemas del cuerpo, que conducen al alivio terapéutico del individuo a tratar', 'Sala de masajes', 'Revisar la condicion del paciente', 'Cuidar demasiado la zona de la terapia');
INSERT INTO `estetica`.`Protocolo` (`Proto_id`, `Proto_procedimiento`, `Proto_ubicacion`, `Proto_medidas`, `Proto_recomend`) VALUES ('4', 'Teniendo esto en cuenta, si se aplica cierta presión sobre dichos meridianos mediante las palmas y los dedos de las manos, sobre todo los pulgares, podremos reconducir y mejorar la circulación de la energía y, por consiguiente, nuestra salud.', 'Sala de masajes', 'Cuidar la presion aplicada', 'No realizar en pacientes con osteoprosis');
INSERT INTO `estetica`.`Protocolo` (`Proto_id`, `Proto_procedimiento`, `Proto_ubicacion`, `Proto_medidas`, `Proto_recomend`) VALUES ('5', 'La Chocolaterapia es una técnica perteneciente al área de la Naturopatía Estética socialmente conocida como terapia natural o terapia alternativa. Cada vez es más conocida y está más de moda.', 'Sala de masajes', 'Cuidar la temperatura del chocolate', 'Revisar que no hayan heridas abiertas');
INSERT INTO `estetica`.`Protocolo` (`Proto_id`, `Proto_procedimiento`, `Proto_ubicacion`, `Proto_medidas`, `Proto_recomend`) VALUES ('6', 'Como se aplican una serie de productos químicos es muy importante que todo sea realizado por un profesional que determine antes que nada si hay alguna reacción alérgica a los mismos, como siempre la salud es lo más importante.', 'Sala de masajes', 'No aplicar demasiado tonico', 'Ninguna');
INSERT INTO `estetica`.`Protocolo` (`Proto_id`, `Proto_procedimiento`, `Proto_ubicacion`, `Proto_medidas`, `Proto_recomend`) VALUES ('7', 'Conjunto de diferentes masajes de relajacion desde pies hasta la cabeza', 'Sala de masajes', 'Intervalo de 30 minutos entre cada masaje', 'El paciente debe descansar entre cada masaje');
INSERT INTO `estetica`.`Protocolo` (`Proto_id`, `Proto_procedimiento`, `Proto_ubicacion`, `Proto_medidas`, `Proto_recomend`) VALUES ('8', 'a piel del rostro está constantemente expuesta a la suciedad del ambiente, contaminantes y restos de maquillaje, razón por la que suelen aparecer los antiestéticos puntos negros, espinillas, comedones y granos\nEn personas jóvenes el recambio celular es rápido, pero disminuye con el paso de los años. Esto hace que en personas de mayor edad el recambio de las células de las capas superficiales de la piel sea muy lento. Las nuevas células tardan en llegar y cuando llegan a la superficie de la piel lo hacen sin vida, sin microcirculación y sin terminaciones nerviosas. De esta manera la piel adquiere un aspecto ajado y viejo', 'Sala 2', 'No dejar el tonico por mas de 60 minutos', 'No hay que apretarse la cara porque puede inflamarse y aparecer granos');
INSERT INTO `estetica`.`Protocolo` (`Proto_id`, `Proto_procedimiento`, `Proto_ubicacion`, `Proto_medidas`, `Proto_recomend`) VALUES ('9', 'Aplicar la mezcla secreta que nutrira la piel de la cara, se realizaran movimientos circulares con la yema de los dedos para estimular los poros antes de aplicar el tonico', 'Sala 2', 'Ninguna', 'Ninguna');
INSERT INTO `estetica`.`Protocolo` (`Proto_id`, `Proto_procedimiento`, `Proto_ubicacion`, `Proto_medidas`, `Proto_recomend`) VALUES ('10', 'Masajear suavemente la cara y aplicar la crema rejuvenecedora para alimetnar la piel de la cara ', 'Sala 2', 'Ninguna', 'Realizar maximo dos veces al mes');
INSERT INTO `estetica`.`Protocolo` (`Proto_id`, `Proto_procedimiento`, `Proto_ubicacion`, `Proto_medidas`, `Proto_recomend`) VALUES ('11', 'Se utiliza la tecnica de la cavitacion para combatir y quemar la grasa, especialmente en zona abdominal y lumbar', 'Sala 3', 'No aplicar mucha fuerza de absorcion en la cabitacion', 'Aplicar crema si la piel es muy reseca');
INSERT INTO `estetica`.`Protocolo` (`Proto_id`, `Proto_procedimiento`, `Proto_ubicacion`, `Proto_medidas`, `Proto_recomend`) VALUES ('12', 'Aplicar el laser cuidadosamente en las axilas y de manera uniforme', 'Sala 4', 'Ajustar correctamente la intensidad del laser segun el tono', 'No dejar el laser mucho tiempo en la zona sin moverlo');
INSERT INTO `estetica`.`Protocolo` (`Proto_id`, `Proto_procedimiento`, `Proto_ubicacion`, `Proto_medidas`, `Proto_recomend`) VALUES ('13', 'Aplicar el laser cuidadosamente en la espalday de manera uniforme', 'Sala 4', 'Ajustar la intensidad del laser', 'No dejar el laser mucho timepor sobre la misma zona');
INSERT INTO `estetica`.`Protocolo` (`Proto_id`, `Proto_procedimiento`, `Proto_ubicacion`, `Proto_medidas`, `Proto_recomend`) VALUES ('14', 'Aplicar el laser cuidadosamente en las piernas y de manera uni', 'Sala 4', 'Ajustar la intensidad del laser correctamente', 'No dejar el laser sobre la misma zon apor mucho tiempo.');
INSERT INTO `estetica`.`Protocolo` (`Proto_id`, `Proto_procedimiento`, `Proto_ubicacion`, `Proto_medidas`, `Proto_recomend`) VALUES ('15', 'Aplicar el laser cuidadosamente en los brazos', 'Sala 4', 'Ajustar la intensidad', ' No dejarlo mucho tiempo');
INSERT INTO `estetica`.`Protocolo` (`Proto_id`, `Proto_procedimiento`, `Proto_ubicacion`, `Proto_medidas`, `Proto_recomend`) VALUES ('16', 'Aplicar el laser cuidadosamente en la barba y bigote y de manera uni', 'Sala 4', 'Ajustar la intensidad', 'No dejarlo mucho tiempo');
INSERT INTO `estetica`.`Protocolo` (`Proto_id`, `Proto_procedimiento`, `Proto_ubicacion`, `Proto_medidas`, `Proto_recomend`) VALUES ('17', 'Dejar las manos sobre agua tibia y polvo magico, luego de esto arreglar el tamano de las unas y por ultimpo aplicar el esmalte ', 'Peluqueria', 'Calentar apropiadamente el agua', 'Preguntar al cliente la temperatura');
INSERT INTO `estetica`.`Protocolo` (`Proto_id`, `Proto_procedimiento`, `Proto_ubicacion`, `Proto_medidas`, `Proto_recomend`) VALUES ('18', 'Dejar los pies en agua tibia y polvo magico, luego arreglar unas y aplicar esmalte', 'Peluqueria', 'Calentar apropiadamente el agua', 'Preguntar por la temperatura');
INSERT INTO `estetica`.`Protocolo` (`Proto_id`, `Proto_procedimiento`, `Proto_ubicacion`, `Proto_medidas`, `Proto_recomend`) VALUES ('19', 'Realizar el corte que solicite el cliente.', 'Peluqueria', 'No correr con las tijeras', 'Limpiar el cabello luego del corte');
INSERT INTO `estetica`.`Protocolo` (`Proto_id`, `Proto_procedimiento`, `Proto_ubicacion`, `Proto_medidas`, `Proto_recomend`) VALUES ('20', 'Se trata del “blower laminado”, una técnica diseñada especialmente a base de productos naturales, que llevan a la docilidad de la fibra, por cuanto es lo que se requiere para lograr un cabello lacio.', 'Peluqueria', 'Realizar con cuidado', 'No realizar luego de un tinte');
INSERT INTO `estetica`.`Protocolo` (`Proto_id`, `Proto_procedimiento`, `Proto_ubicacion`, `Proto_medidas`, `Proto_recomend`) VALUES ('21', 'Realizar el descoloramiento si es necesario, luego de esto aplicar el tinte y esperar por 30 minutos ', 'Peluqueria ', 'No aplicar el descolorante en pieles sensibles ', 'No dejar el tinte por mas de 30 minutos si no es necesario');


-- values in servicio

ALTER TABLE `estetica`.`Servicio` 
CHANGE COLUMN `Ser_nombre` `Ser_nombre` VARCHAR(50) NULL DEFAULT NULL ;

INSERT INTO `estetica`.`Servicio` (`Ser_id`, `Ser_nombre`, `Ser_numsesiones`, `Proto_id`, `tipoServicio_idtipoServicio`, `Ser_precio`) VALUES ('1', 'Masaje de relajación', '1', '1', '1', '150000');
INSERT INTO `estetica`.`Servicio` (`Ser_id`, `Ser_nombre`, `Ser_numsesiones`, `Proto_id`, `tipoServicio_idtipoServicio`, `Ser_precio`) VALUES ('2', 'Masaje de espalda', '1', '2', '1', '150000');
INSERT INTO `estetica`.`Servicio` (`Ser_id`, `Ser_nombre`, `Ser_numsesiones`, `Proto_id`, `tipoServicio_idtipoServicio`, `Ser_precio`) VALUES ('3', 'Masaje terapéutoco', '1', '3', '1', '170000');
INSERT INTO `estetica`.`Servicio` (`Ser_id`, `Ser_nombre`, `Ser_numsesiones`, `Proto_id`, `tipoServicio_idtipoServicio`, `Ser_precio`) VALUES ('4', 'Masaje Shiatzu', '1', '4', '1', '200000');
INSERT INTO `estetica`.`Servicio` (`Ser_id`, `Ser_nombre`, `Ser_numsesiones`, `Proto_id`, `tipoServicio_idtipoServicio`, `Ser_precio`) VALUES ('5', 'Chocolaterapia', '1', '5', '1', '180000');
INSERT INTO `estetica`.`Servicio` (`Ser_id`, `Ser_nombre`, `Ser_numsesiones`, `Proto_id`, `tipoServicio_idtipoServicio`, `Ser_precio`) VALUES ('6', 'Baño de luna', '1', '6', '1', '210000');
INSERT INTO `estetica`.`Servicio` (`Ser_id`, `Ser_nombre`, `Ser_numsesiones`, `Proto_id`, `tipoServicio_idtipoServicio`, `Ser_precio`) VALUES ('7', 'Dia de spa vigorizante', '1', '7', '1', '300000');
INSERT INTO `estetica`.`Servicio` (`Ser_id`, `Ser_nombre`, `Ser_numsesiones`, `Proto_id`, `tipoServicio_idtipoServicio`, `Ser_precio`) VALUES ('8', 'Limpieza facial profunda', '1', '8', '2', '70000');
INSERT INTO `estetica`.`Servicio` (`Ser_id`, `Ser_nombre`, `Ser_numsesiones`, `Proto_id`, `tipoServicio_idtipoServicio`, `Ser_precio`) VALUES ('9', 'Nutricion de facial ', '1', '9', '2', '50000');
INSERT INTO `estetica`.`Servicio` (`Ser_id`, `Ser_nombre`, `Ser_numsesiones`, `Proto_id`, `tipoServicio_idtipoServicio`, `Ser_precio`) VALUES ('10', 'Tratamientos faciales de rejuvenicimiento', '3', '10', '2', '15000');
INSERT INTO `estetica`.`Servicio` (`Ser_id`, `Ser_nombre`, `Ser_numsesiones`, `Proto_id`, `tipoServicio_idtipoServicio`, `Ser_precio`) VALUES ('11', 'Tratamiento de moldeamiento de figura', '4', '11', '3', '200000');
INSERT INTO `estetica`.`Servicio` (`Ser_id`, `Ser_nombre`, `Ser_numsesiones`, `Proto_id`, `tipoServicio_idtipoServicio`, `Ser_precio`) VALUES ('12', 'Depilacion de axilas', '3', '12', '4', '650000');
INSERT INTO `estetica`.`Servicio` (`Ser_id`, `Ser_nombre`, `Ser_numsesiones`, `Proto_id`, `tipoServicio_idtipoServicio`, `Ser_precio`) VALUES ('13', 'depilacion de espalda', '3', '13', '4', '650000');
INSERT INTO `estetica`.`Servicio` (`Ser_id`, `Ser_nombre`, `Ser_numsesiones`, `Proto_id`, `tipoServicio_idtipoServicio`, `Ser_precio`) VALUES ('14', 'Depilacion de piernas', '3', '14', '4', '650000');
INSERT INTO `estetica`.`Servicio` (`Ser_id`, `Ser_nombre`, `Ser_numsesiones`, `Proto_id`, `tipoServicio_idtipoServicio`, `Ser_precio`) VALUES ('15', 'Depilacion de brazos', '3', '15', '4', '650000');
INSERT INTO `estetica`.`Servicio` (`Ser_id`, `Ser_nombre`, `Ser_numsesiones`, `Proto_id`, `tipoServicio_idtipoServicio`, `Ser_precio`) VALUES ('16', 'Depilacion de barba y bigote', '3', '16', '4', '650000');
INSERT INTO `estetica`.`Servicio` (`Ser_id`, `Ser_nombre`, `Ser_numsesiones`, `Proto_id`, `tipoServicio_idtipoServicio`, `Ser_precio`) VALUES ('17', 'Manicure', '1', '17', '5', '20000');
INSERT INTO `estetica`.`Servicio` (`Ser_id`, `Ser_nombre`, `Ser_numsesiones`, `Proto_id`, `tipoServicio_idtipoServicio`, `Ser_precio`) VALUES ('18', 'Pedicure', '1', '18', '5', '20000');
INSERT INTO `estetica`.`Servicio` (`Ser_id`, `Ser_nombre`, `Ser_numsesiones`, `Proto_id`, `tipoServicio_idtipoServicio`, `Ser_precio`) VALUES ('19', 'Corte de cabello', '1', '19', '5', '20000');
INSERT INTO `estetica`.`Servicio` (`Ser_id`, `Ser_nombre`, `Ser_numsesiones`, `Proto_id`, `tipoServicio_idtipoServicio`, `Ser_precio`) VALUES ('20', 'Blower', '1', '20', '5', '40000');
INSERT INTO `estetica`.`Servicio` (`Ser_id`, `Ser_nombre`, `Ser_numsesiones`, `Proto_id`, `tipoServicio_idtipoServicio`, `Ser_precio`) VALUES ('21', 'Tintes', '1', '21', '5', '35000');


-- horario
ALTER TABLE `estetica`.`Horario` 
DROP COLUMN `Horariocol`;
INSERT INTO `estetica`.`Horario` (`Hor_id`, `Hor_lunes`, `Hor_martes`, `Hor_miercoles`, `Hor_jueves`, `Hor_viernes`, `Hor_sabado`, `Hor_domingo`) VALUES ('1', '3', '1', '1', '2', '2', '4', '1');
INSERT INTO `estetica`.`Horario` (`Hor_id`, `Hor_lunes`, `Hor_martes`, `Hor_miercoles`, `Hor_jueves`, `Hor_viernes`, `Hor_sabado`, `Hor_domingo`) VALUES ('2', '3', '4', '2', '1', '1', '2', '1');
INSERT INTO `estetica`.`Horario` (`Hor_id`, `Hor_lunes`, `Hor_martes`, `Hor_miercoles`, `Hor_jueves`, `Hor_viernes`, `Hor_sabado`, `Hor_domingo`) VALUES ('3', '3', '1', '4', '2', '1', '2', '1');
INSERT INTO `estetica`.`Horario` (`Hor_id`, `Hor_lunes`, `Hor_martes`, `Hor_miercoles`, `Hor_jueves`, `Hor_viernes`, `Hor_sabado`, `Hor_domingo`) VALUES ('4', '3', '2', '1', '4', '2', '1', '2');
INSERT INTO `estetica`.`Horario` (`Hor_id`, `Hor_lunes`, `Hor_martes`, `Hor_miercoles`, `Hor_jueves`, `Hor_viernes`, `Hor_sabado`, `Hor_domingo`) VALUES ('5', '3', '2', '1', '2', '4', '1', '1');
INSERT INTO `estetica`.`Horario` (`Hor_id`, `Hor_lunes`, `Hor_martes`, `Hor_miercoles`, `Hor_jueves`, `Hor_viernes`, `Hor_sabado`, `Hor_domingo`) VALUES ('6', '1', '1', '1', '1', '4', '3', '1');
INSERT INTO `estetica`.`Horario` (`Hor_id`, `Hor_lunes`, `Hor_martes`, `Hor_miercoles`, `Hor_jueves`, `Hor_viernes`, `Hor_sabado`, `Hor_domingo`) VALUES ('7', '1', '1', '1', '1', '3', '1', '4');
INSERT INTO `estetica`.`Horario` (`Hor_id`, `Hor_lunes`, `Hor_martes`, `Hor_miercoles`, `Hor_jueves`, `Hor_viernes`, `Hor_sabado`, `Hor_domingo`) VALUES ('8', '1', '1', '1', '3', '1', '1', '4');
INSERT INTO `estetica`.`Horario` (`Hor_id`, `Hor_lunes`, `Hor_martes`, `Hor_miercoles`, `Hor_jueves`, `Hor_viernes`, `Hor_sabado`, `Hor_domingo`) VALUES ('9', '1', '1', '3', '1', '1', '1', '4');
INSERT INTO `estetica`.`Horario` (`Hor_id`, `Hor_lunes`, `Hor_martes`, `Hor_miercoles`, `Hor_jueves`, `Hor_viernes`, `Hor_sabado`, `Hor_domingo`) VALUES ('10', '1', '3', '1', '1', '1', '1', '4');
INSERT INTO `estetica`.`Horario` (`Hor_id`, `Hor_lunes`, `Hor_martes`, `Hor_miercoles`, `Hor_jueves`, `Hor_viernes`, `Hor_sabado`, `Hor_domingo`) VALUES ('11', '2', '2', '2', '2', '2', '3', '4');
INSERT INTO `estetica`.`Horario` (`Hor_id`, `Hor_lunes`, `Hor_martes`, `Hor_miercoles`, `Hor_jueves`, `Hor_viernes`, `Hor_sabado`, `Hor_domingo`) VALUES ('12', '2', '2', '2', '2', '3', '2', '4');
INSERT INTO `estetica`.`Horario` (`Hor_id`, `Hor_lunes`, `Hor_martes`, `Hor_miercoles`, `Hor_jueves`, `Hor_viernes`, `Hor_sabado`, `Hor_domingo`) VALUES ('13', '2', '2', '2', '3', '2', '2', '4');
INSERT INTO `estetica`.`Horario` (`Hor_id`, `Hor_lunes`, `Hor_martes`, `Hor_miercoles`, `Hor_jueves`, `Hor_viernes`, `Hor_sabado`, `Hor_domingo`) VALUES ('14', '2', '2', '3', '2', '2', '2', '4');
INSERT INTO `estetica`.`Horario` (`Hor_id`, `Hor_lunes`, `Hor_martes`, `Hor_miercoles`, `Hor_jueves`, `Hor_viernes`, `Hor_sabado`, `Hor_domingo`) VALUES ('15', '2', '3', '2', '2', '2', '2', '4');
INSERT INTO `estetica`.`Horario` (`Hor_id`, `Hor_lunes`, `Hor_martes`, `Hor_miercoles`, `Hor_jueves`, `Hor_viernes`, `Hor_sabado`, `Hor_domingo`) VALUES ('16', '3', '2', '2', '2', '2', '2', '4');
INSERT INTO `estetica`.`Horario` (`Hor_id`, `Hor_lunes`, `Hor_martes`, `Hor_miercoles`, `Hor_jueves`, `Hor_viernes`, `Hor_sabado`, `Hor_domingo`) VALUES ('17', '2', '1', '3', '2', '2', '1', '2');
INSERT INTO `estetica`.`Horario` (`Hor_id`, `Hor_lunes`, `Hor_martes`, `Hor_miercoles`, `Hor_jueves`, `Hor_viernes`, `Hor_sabado`, `Hor_domingo`) VALUES ('18', '1', '2', '2', '2', '1', '4', '3');
INSERT INTO `estetica`.`Horario` (`Hor_id`, `Hor_lunes`, `Hor_martes`, `Hor_miercoles`, `Hor_jueves`, `Hor_viernes`, `Hor_sabado`, `Hor_domingo`) VALUES ('19', '2', '1', '4', '2', '2', '4', '1');
INSERT INTO `estetica`.`Horario` (`Hor_id`, `Hor_lunes`, `Hor_martes`, `Hor_miercoles`, `Hor_jueves`, `Hor_viernes`, `Hor_sabado`, `Hor_domingo`) VALUES ('20', '1', '1', '1', '2', '2', '3', '3');

-- insert into Cargo
INSERT INTO `estetica`.`Cargo` (`Cargo_id`, `Cargo_nom`) VALUES ('1', 'Peluquero');
INSERT INTO `estetica`.`Cargo` (`Cargo_id`, `Cargo_nom`) VALUES ('2', 'Esteticista');
INSERT INTO `estetica`.`Cargo` (`Cargo_id`, `Cargo_nom`) VALUES ('3', 'Recepcionista');
INSERT INTO `estetica`.`Cargo` (`Cargo_id`, `Cargo_nom`) VALUES ('4', 'Administrador');
INSERT INTO `estetica`.`Cargo` (`Cargo_id`, `Cargo_nom`) VALUES ('5', 'Gerente');
INSERT INTO `estetica`.`Cargo` (`Cargo_id`, `Cargo_nom`) VALUES ('6', 'Mantenimiento');

-- insert into Empleado

ALTER TABLE `estetica`.`Empleado` 
CHANGE COLUMN `Emp_telefono` `Emp_telefono` VARCHAR(25) NULL DEFAULT NULL ;

INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('248465319', 'Ellie', 'Chaves', '3016183420', 'Carrera 73 # 118a-31','4','6');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('449263429', 'Luke', 'Wu', '3129985419', 'Calle 101 # 172g-45','4','12');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('326225228', 'Rafael', 'Pulido', '3196694405', 'Transversal 33 # 167d-19','3','6');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('147283400', 'Ellie', 'Guerrero', '3122418500', 'Avenida Calle 7 # 73j-45','3','12');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('790956969', 'Luke', 'Cruz', '3057662646', 'Carrera 155 # 158g-41','2','1');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('672668779', 'Juana', 'Guzman', '3056605125', 'Avenida Calle 10 # 50j-37','1','2');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('541283011', 'Fernando', 'Lu', '3053184952', 'Transversal 132 # 73d-8','2','3');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('649537769', 'Alberto', 'Bonilla', '3195613250', 'Avenida Calle 16 # 117b-12','1','4');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('458923433', 'Sebastian', 'Bonilla', '3191527817', 'Avenida Calle 57 # 93d-5','2','5');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('139512964', 'Alberto', 'Bonilla', '3000436969', 'Avenida Calle 90 # 176e-6','1','6');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('306232015', 'Luke', 'Garcia', '3110836376', 'Transversal 122 # 4b-20','2','7');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('83176271', 'Han', 'Lu', '3013148456', 'Transversal 65 # 130c-6','1','8');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('817203845', 'Rafael', 'Jimenez', '3129717850', 'Avenida Calle 53 # 148b-1','2','9');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('1010029689', 'Fernando', 'Sierra', '3000147376', 'Avenida Calle 123 # 67d-14','1','10');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('604748358', 'Alberto', 'Sierra', '3055127012', 'Transversal 13 # 128j-31','2','11');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('115948572', 'Daniela', 'Garcia', '3215375997', 'Calle 108 # 171e-17','1','12');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('904807415', 'Michael', 'Trujillo', '3190685556', 'Avenida Calle 146 # 25e-50','2','13');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('215587465', 'Juana', 'Pulido', '3123837520', 'Carrera 34 # 123i-13','1','14');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('271153313', 'Andrea', 'Wu', '3109652454', 'Carrera 112 # 61i-43','2','15');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('599891092', 'Valentina', 'Caballero', '3109669272', 'Avenida Calle 178 # 18e-26','1','16');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('981599360', 'Lorena', 'Chaves', '3012030069', 'Calle 92 # 8g-18','2','17');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('969109962', 'Andrea', 'Pedraza', '3197209720', 'Carrera 102 # 28a-29','1','18');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('350385242', 'Michael', 'Guerrero', '3056081003', 'Carrera 39 # 84a-38','2','19');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('98835610', 'Sebastian', 'Ramirez', '3194490551', 'Carrera 174 # 114c-33','1','20');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('652253891', 'Lorena', 'Pulido', '3109830871', 'Transversal 4 # 157f-30','2','1');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('199062349', 'Rafael', 'Sanchez', '3006362048', 'Calle 61 # 22a-32','1','2');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('542832434', 'Rafael', 'Cruz', '3217869595', 'Calle 133 # 133f-9','2','3');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('1004664115', 'Michael', 'Ramirez', '3017617441', 'Avenida Calle 95 # 18i-14','1','4');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('606449359', 'Juana', 'Caballero', '3006668561', 'Carrera 79 # 133j-46','2','5');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('102446248', 'Fernando', 'Pulido', '3103553167', 'Carrera 136 # 31e-10','1','6');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('472411990', 'Camilo', 'Bonilla', '3215358422', 'Carrera 75 # 175c-20','2','7');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('319231318', 'Andrea', 'Cruz', '3212839906', 'Avenida Calle 17 # 10j-25','1','8');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('168791981', 'Fernando', 'Pinilla', '3219108332', 'Calle 149 # 75h-17','2','9');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('486626255', 'Daniela', 'Guzman', '3101527856', 'Transversal 171 # 120j-19','1','10');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('127926480', 'Valentina', 'Pinilla', '3055126606', 'Avenida Calle 110 # 115h-41','2','11');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('69240578', 'Fernando', 'Sanchez', '3010784989', 'Avenida Calle 84 # 149b-33','1','12');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('637502184', 'Juana', 'Cruz', '3218080813', 'Calle 127 # 159c-7','2','13');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('860046402', 'Lorena', 'Pinilla', '3050747254', 'Carrera 83 # 25i-23','1','14');
INSERT INTO `estetica`.`Empleado` (`Emp_cc`, `Emp_nombre`, `Emp_Apellido`, `Emp_telefono`, `Emp_direccion`, `Cargo_id`, `Horario_Hor_id`) VALUES ('171182110', 'Juliana', 'Ramirez', '3100746364', 'Carrera 84 # 7e-10','2','15');

-- Producto

ALTER TABLE `estetica`.`Producto` 
CHANGE COLUMN `Pro_nombre` `Pro_nombre` VARCHAR(30) NULL DEFAULT NULL ,
CHANGE COLUMN `Pro_uso` `Pro_descripcion` VARCHAR(100) NULL DEFAULT NULL ,
CHANGE COLUMN `sto_id` `Pro_precioVenta` DECIMAL(15) NULL DEFAULT NULL ;

ALTER TABLE `estetica`.`Producto` 
CHANGE COLUMN `Pro_precioVenta` `Pro_precioVenta` DECIMAL(30,0) NULL DEFAULT NULL ;

INSERT INTO `estetica`.`Producto` (`Pro_id`, `Pro_nombre`, `Pro_descripcion`, `Pro_precioVenta`) VALUES ('01', 'Shampoo', 'Lavado del cabello ', '12000');
INSERT INTO `estetica`.`Producto` (`Pro_id`, `Pro_nombre`, `Pro_descripcion`, `Pro_precioVenta`) VALUES ('02', 'Acond c liso ', 'Tratamiento cabello liso ', '15000');
INSERT INTO `estetica`.`Producto` (`Pro_id`, `Pro_nombre`, `Pro_descripcion`, `Pro_precioVenta`) VALUES ('03', 'Acond c risado ', 'Tratamiento cabello rizado ', '15000');
INSERT INTO `estetica`.`Producto` (`Pro_id`, `Pro_nombre`, `Pro_descripcion`, `Pro_precioVenta`) VALUES ('04', 'Tratami c tinturado', 'Tratamiento para cabello tinturado', '30000');
INSERT INTO `estetica`.`Producto` (`Pro_id`, `Pro_nombre`, `Pro_descripcion`, `Pro_precioVenta`) VALUES ('05', 'Desmaquillantes', 'Toallas desmaquillantes', '10000');
INSERT INTO `estetica`.`Producto` (`Pro_id`, `Pro_nombre`, `Pro_descripcion`, `Pro_precioVenta`) VALUES ('06', 'Crema cara', 'Hidratante facial ', '40000');
INSERT INTO `estetica`.`Producto` (`Pro_id`, `Pro_nombre`, `Pro_descripcion`, `Pro_precioVenta`) VALUES ('07', 'Bloqueador', 'Protege de los rayos uv', '40000');
INSERT INTO `estetica`.`Producto` (`Pro_id`, `Pro_nombre`, `Pro_descripcion`, `Pro_precioVenta`) VALUES ('08', 'Esmalte negro', 'Decoracion de unas', '3000');
INSERT INTO `estetica`.`Producto` (`Pro_id`, `Pro_nombre`, `Pro_descripcion`, `Pro_precioVenta`) VALUES ('09', 'Esmalte rojo', 'Decoracion de unas', '3000');
INSERT INTO `estetica`.`Producto` (`Pro_id`, `Pro_nombre`, `Pro_descripcion`, `Pro_precioVenta`) VALUES ('10', 'Crema arrugas', 'Rejuvenecedor facial ', '30000');
INSERT INTO `estetica`.`Producto` (`Pro_id`, `Pro_nombre`, `Pro_descripcion`, `Pro_precioVenta`) VALUES ('11', 'Crema limpiadora', 'Crema limpiador facial ', '15000');
INSERT INTO `estetica`.`Producto` (`Pro_id`, `Pro_nombre`, `Pro_descripcion`, `Pro_precioVenta`) VALUES ('12', 'Vandas depila', 'Vandas para depilacion de piernas ', '15000');
INSERT INTO `estetica`.`Producto` (`Pro_id`, `Pro_nombre`, `Pro_descripcion`, `Pro_precioVenta`) VALUES ('14', 'Keratina', 'Tratamiento para cabello ', '200000');
INSERT INTO `estetica`.`Producto` (`Pro_id`, `Pro_nombre`, `Pro_descripcion`, `Pro_precioVenta`) VALUES ('15', 'Tinte cabello ', 'Tintura para cabello ', '15000');
INSERT INTO `estetica`.`Producto` (`Pro_id`, `Pro_nombre`, `Pro_descripcion`, `Pro_precioVenta`) VALUES ('16', 'Cera depila', 'Cera para delipacion general ', '10000');
INSERT INTO `estetica`.`Producto` (`Pro_id`, `Pro_nombre`, `Pro_descripcion`, `Pro_precioVenta`) VALUES ('17 ', 'Aceite relajante', 'Aceite para masaje relajante ', '15000');
INSERT INTO `estetica`.`Producto` (`Pro_id`, `Pro_nombre`, `Pro_descripcion`, `Pro_precioVenta`) VALUES ('18 ', 'Aceite adelgazante', 'Aceite masaje ', '17000');
INSERT INTO `estetica`.`Producto` (`Pro_id`, `Pro_nombre`, `Pro_descripcion`, `Pro_precioVenta`) VALUES ('19', 'Chocolate', 'chocolaterapia', '30000');
INSERT INTO `estetica`.`Producto` (`Pro_id`, `Pro_nombre`, `Pro_descripcion`, `Pro_precioVenta`) VALUES ('20', 'Trat limpieza', 'Para limpieza facial ', '15000');
INSERT INTO `estetica`.`Producto` (`Pro_id`, `Pro_nombre`, `Pro_descripcion`, `Pro_precioVenta`) VALUES ('21', 'Quita esmalte', 'Limpiar unas ', '30000');
INSERT INTO `estetica`.`Producto` (`Pro_id`, `Pro_nombre`, `Pro_descripcion`, `Pro_precioVenta`) VALUES ('22', 'Sobre de shampoo', 'Sobre pequeno de shampoo', '3000');
INSERT INTO `estetica`.`Producto` (`Pro_id`, `Pro_nombre`, `Pro_descripcion`, `Pro_precioVenta`) VALUES ('23', 'Aceite pequeno', 'Aceite de almendra pequeno', '3000');


INSERT INTO `estetica`.`CompraProveedor` (`idCompraProveedor`, `CPRO_costo`, `Proveedor_Prov_id`) VALUES ('01', '0', '3');
INSERT INTO `estetica`.`CompraProveedor` (`idCompraProveedor`, `CPRO_costo`, `Proveedor_Prov_id`) VALUES ('02', '0', '5');
INSERT INTO `estetica`.`CompraProveedor` (`idCompraProveedor`, `CPRO_costo`, `Proveedor_Prov_id`) VALUES ('03', '0', '3');
INSERT INTO `estetica`.`CompraProveedor` (`idCompraProveedor`, `CPRO_costo`, `Proveedor_Prov_id`) VALUES ('04', '0', '1');
INSERT INTO `estetica`.`CompraProveedor` (`idCompraProveedor`, `CPRO_costo`, `Proveedor_Prov_id`) VALUES ('05', '0', '10');
INSERT INTO `estetica`.`CompraProveedor` (`idCompraProveedor`, `CPRO_costo`, `Proveedor_Prov_id`) VALUES ('06', '0', '7');

-- TRANSACCION

INSERT INTO `estetica`.`Transaccion` ( `Tran_monto`, `Tran_tipo`, `Tran_estado_inicial`, `Tran_estado_final`) VALUES ('7000000', 'Inicial','0','7000000');	


-- --------------------------------------------------------------------------------
-- 	EJECUTAR LUEGO DEL TRIGGUER DE ADQ COMPRA PROV e INVENTARIO
-- --------------------------------------------------------------------------------
-- valores de la adquisición en la compra al proveedor uno
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('01', '01', '01', '10000', '2020-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('2', '01', '01', '10000', '2020-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('3', '01', '01', '10000', '2020-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('4', '14', '01', '180000','2020-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('5', '14', '01', '180000', '2020-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('6', '01', '01', '10000', '2020-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('7', '19', '01', '25000', '2020-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('8', '19', '01', '25000', '2020-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('9', '4', '01', '25000', '2020-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('10', '4', '01', '25000', '2020-01-01');
-- valores de adquisición en la compra al proveedor dos 
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('11', '21', '2', '2500',  '2022-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('12', '21', '2', '2500', '2022-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('13', '21', '2', '2500','2022-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('14', '21', '2', '2500','2022-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('15', '21', '2', '2500','2022-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('16', '21', '2', '2500','2022-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('17', '21', '2', '2500','2022-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('18', '21', '2', '2500','2022-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('19', '21', '2', '2500','2022-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('20', '21', '2', '2500','2022-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('21', '8', '2', '2500','2022-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('22', '8', '2', '2500','2022-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('23', '8', '2', '2500','2022-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('24', '8', '2', '2500','2022-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('25', '8', '2', '2500','2022-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('26', '8', '2', '2500','2022-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('27', '8', '2', '2500','2016-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('28', '8', '2', '2500','2016-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('29', '8', '2', '2500','2016-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('30', '8', '2', '2500','2016-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('31', '9', '2', '2500','2016-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('32', '9', '2', '2500','2016-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('33', '9', '2', '2500','2016-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('34', '9', '2', '2500','2016-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('35', '9', '2', '2500','2016-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('36', '9', '2', '2500','2016-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('37', '9', '2', '2500','2016-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('38', '9', '2', '2500','2016-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('39', '9', '2', '2500','2016-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('40', '9', '2', '2500','2016-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('41', '10', '2', '2500','2016-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('42', '10', '2', '2500','2019-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('43', '10', '2', '2500','2019-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('44', '10', '2', '2500','2019-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('45', '10', '2', '2500','2019-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('46', '10', '2', '2500','2019-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('47', '10', '2', '2500','2019-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('48', '10', '2', '2500','2019-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('49', '10', '2', '2500','2019-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('50', '10', '2', '2500','2019-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('51', '11', '2', '12000','2019-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('52', '11', '2', '12000','2019-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('53', '11', '2', '12000','2019-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('54', '11', '2', '12000','2019-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('55', '11', '2', '12000','2019-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('56', '11', '2', '12000','2019-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('57', '11', '2', '12000','2019-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('58', '23', '2', '12000','2019-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('59', '23', '2', '12000','2019-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('60', '23', '2', '12000','2019-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('61', '23', '2', '10000', '2022-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('62', '23', '2', '10000', '2022-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('63', '23', '2', '10000', '2022-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('64', '23', '2', '10000', '2022-01-01');
-- valores de adquisición en la compra al proveedor 3 
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('65', '23', '3', '30000', '2022-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('66', '23', '3', '30000', '2022-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('67', '23', '3', '30000', '2022-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('68', '23', '3', '30000', '2022-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('69', '23', '3', '30000', '2022-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('70', '23', '3', '30000', '2022-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('71', '22', '3', '30000', '2022-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('72', '22', '3', '30000', '2022-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('73', '22', '3', '30000', '2022-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('74', '22', '3', '30000', '2022-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('75', '22', '3', '15000', '2022-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('76', '22', '3', '15000', '2022-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('77', '22', '3', '15000', '2022-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('78', '22', '3', '15000', '2022-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('79', '22', '3', '15000', '2022-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('80', '18', '3', '15000', '2022-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('81', '18', '3', '15000', '2015-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('82', '18', '3', '15000', '2015-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('83', '18', '3', '15000', '2015-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('84', '18', '3', '15000', '2015-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('85', '2', '3', '12000', '2015-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('86', '2', '3', '12000', '2015-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('87', '2', '3', '12000', '2015-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('88', '2', '3', '12000', '2015-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('89', '2', '3', '12000', '2015-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('90', '3', '3', '12000', '2015-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('91', '3', '3', '12000', '2015-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('92', '3', '3', '12000', '2015-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('93', '3', '3', '12000', '2015-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('94', '3', '3', '12000', '2015-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('95', '4', '3', '25000', '2015-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('96', '4', '3', '25000', '2015-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('97', '4', '3', '25000', '2015-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('98', '4', '3', '25000', '2015-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('99', '4', '3', '25000', '2015-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('100', '8', '3', '2500', '2015-01-01');
INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)  VALUES ('101', '8', '3', '2500', '2025-01-01');


INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('22', '1');
INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('22', '2');
INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('22', '3');
INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('22', '4');
INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('22', '5');
INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('19', '5');
INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('22', '6');
INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('19', '6');
INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('17', '1');
INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('17', '2');
INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('17', '3');
INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('17', '6');
INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('17', '7');
INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('22', '7');
INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('11', '8');
INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('20', '8');
INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('6', '9');
INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('10', '10');
INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('18', '11');
INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('16', '12');
INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('16', '13');
INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('16', '14');
INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('16', '15');
INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('16', '16');
INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('8', '17');
INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('9', '17');
INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('21', '17');
INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('8', '18');
INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('9', '18');
INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('10', '18');
INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('23', '19');
INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('23', '20');
INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('4', '20');
INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('4', '21');
INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('2', '20');
INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('3', '20');
INSERT INTO `estetica`.`Producto_has_Protocolo` (`Producto_Pro_id`, `Protocolo_Proto_id`) VALUES ('15', '21');

INSERT INTO `estetica`.`Venta` (`Ven_id`, `Ven_fecha`, `Cli_cc`, `Ven_Emp_cc`) VALUES ('1', '2016-04-23', '609336869', '637502184');
INSERT INTO `estetica`.`Venta` (`Ven_id`, `Ven_fecha`, `Cli_cc`, `Ven_Emp_cc`) VALUES ('2', '2016-04-14', '609336869', '472411990');
INSERT INTO `estetica`.`Venta` (`Ven_id`, `Ven_fecha`, `Cli_cc`, `Ven_Emp_cc`) VALUES ('3', '2016-04-11', '810125750', '604748358');
INSERT INTO `estetica`.`Venta` (`Ven_id`, `Ven_fecha`, `Cli_cc`, `Ven_Emp_cc`) VALUES ('4', '2016-04-10', '62702537', '604748358');
INSERT INTO `estetica`.`Venta` (`Ven_id`, `Ven_fecha`, `Cli_cc`, `Ven_Emp_cc`) VALUES ('5', '2016-04-13', '810125750', '98835610');
INSERT INTO `estetica`.`Venta` (`Ven_id`, `Ven_fecha`, `Cli_cc`, `Ven_Emp_cc`) VALUES ('6', '2016-04-12', '72150530', '637502184');
INSERT INTO `estetica`.`Venta` (`Ven_id`, `Ven_fecha`, `Cli_cc`, `Ven_Emp_cc`) VALUES ('7', '2016-04-20', '810125750', '472411990');
INSERT INTO `estetica`.`Venta` (`Ven_id`, `Ven_fecha`, `Cli_cc`, `Ven_Emp_cc`) VALUES ('8', '2016-04-16', '609336869', '98835610');
INSERT INTO `estetica`.`Venta` (`Ven_id`, `Ven_fecha`, `Cli_cc`, `Ven_Emp_cc`) VALUES ('9', '2016-04-15', '81331413', '306232015');
INSERT INTO `estetica`.`Venta` (`Ven_id`, `Ven_fecha`, `Cli_cc`, `Ven_Emp_cc`) VALUES ('10', '2016-04-12', '405417043', '98835610');
INSERT INTO `estetica`.`Venta` (`Ven_id`, `Ven_fecha`, `Cli_cc`, `Ven_Emp_cc`) VALUES ('11', '2016-04-19', '81331413', '637502184');
INSERT INTO `estetica`.`Venta` (`Ven_id`, `Ven_fecha`, `Cli_cc`, `Ven_Emp_cc`) VALUES ('12', '2016-04-24', '405417043', '115948572');
INSERT INTO `estetica`.`Venta` (`Ven_id`, `Ven_fecha`, `Cli_cc`, `Ven_Emp_cc`) VALUES ('13', '2016-04-11', '62702537', '604748358');
INSERT INTO `estetica`.`Venta` (`Ven_id`, `Ven_fecha`, `Cli_cc`, `Ven_Emp_cc`) VALUES ('14', '2016-04-18', '609336869', '115948572');
INSERT INTO `estetica`.`Venta` (`Ven_id`, `Ven_fecha`, `Cli_cc`, `Ven_Emp_cc`) VALUES ('15', '2016-04-20', '62702537', '637502184');
INSERT INTO `estetica`.`Venta` (`Ven_id`, `Ven_fecha`, `Cli_cc`, `Ven_Emp_cc`) VALUES ('16', '2016-04-20', '81331413', '637502184');
INSERT INTO `estetica`.`Venta` (`Ven_id`, `Ven_fecha`, `Cli_cc`, `Ven_Emp_cc`) VALUES ('17', '2016-04-24', '62702537', '98835610');
INSERT INTO `estetica`.`Venta` (`Ven_id`, `Ven_fecha`, `Cli_cc`, `Ven_Emp_cc`) VALUES ('18', '2016-04-21', '72150530', '115948572');
INSERT INTO `estetica`.`Venta` (`Ven_id`, `Ven_fecha`, `Cli_cc`, `Ven_Emp_cc`) VALUES ('19', '2016-04-20', '405417043', '637502184');
INSERT INTO `estetica`.`Venta` (`Ven_id`, `Ven_fecha`, `Cli_cc`, `Ven_Emp_cc`) VALUES ('20', '2016-04-14', '62702537', '306232015');



INSERT INTO `estetica`.`Venta_Producto` (`Ven_id`, `Venp_id`) VALUES ('1', '1');
INSERT INTO `estetica`.`Venta_Producto` (`Ven_id`, `Venp_id`) VALUES ('2', '2');
INSERT INTO `estetica`.`Venta_Producto` (`Ven_id`, `Venp_id`) VALUES ('3', '3');
INSERT INTO `estetica`.`Venta_Producto` (`Ven_id`, `Venp_id`) VALUES ('3', '4');
INSERT INTO `estetica`.`Venta_Producto` (`Ven_id`, `Venp_id`) VALUES ('3', '5');
INSERT INTO `estetica`.`Venta_Producto` (`Ven_id`, `Venp_id`) VALUES ('3', '6');
INSERT INTO `estetica`.`Venta_Producto` (`Ven_id`, `Venp_id`) VALUES ('3', '7');
INSERT INTO `estetica`.`Venta_Producto` (`Ven_id`, `Venp_id`) VALUES ('8', '8');
INSERT INTO `estetica`.`Venta_Producto` (`Ven_id`, `Venp_id`) VALUES ('9', '9');
INSERT INTO `estetica`.`Venta_Producto` (`Ven_id`, `Venp_id`) VALUES ('10', '10');
INSERT INTO `estetica`.`Venta_Producto` (`Ven_id`, `Venp_id`) VALUES ('10', '11');
INSERT INTO `estetica`.`Venta_Producto` (`Ven_id`, `Venp_id`) VALUES ('10', '12');
INSERT INTO `estetica`.`Venta_Producto` (`Ven_id`, `Venp_id`) VALUES ('13', '13');
INSERT INTO `estetica`.`Venta_Producto` (`Ven_id`, `Venp_id`) VALUES ('13', '14');
INSERT INTO `estetica`.`Venta_Producto` (`Ven_id`, `Venp_id`) VALUES ('14', '15');
INSERT INTO `estetica`.`Venta_Producto` (`Ven_id`, `Venp_id`) VALUES ('13', '16');
INSERT INTO `estetica`.`Venta_Producto` (`Ven_id`, `Venp_id`) VALUES ('13', '17');
INSERT INTO `estetica`.`Venta_Producto` (`Ven_id`, `Venp_id`) VALUES ('14', '18');
INSERT INTO `estetica`.`Venta_Producto` (`Ven_id`, `Venp_id`) VALUES ('15', '19');
INSERT INTO `estetica`.`Venta_Producto` (`Ven_id`, `Venp_id`) VALUES ('15', '20');


INSERT INTO `estetica`.`Venta_Servicio` (`Ven_id`, `Ser_id`, `VenS_id`) VALUES ('1', '1', '1');
INSERT INTO `estetica`.`Venta_Servicio` (`Ven_id`, `Ser_id`, `VenS_id`) VALUES ('2', '2', '2');
INSERT INTO `estetica`.`Venta_Servicio` (`Ven_id`, `Ser_id`, `VenS_id`) VALUES ('3', '3', '3');
INSERT INTO `estetica`.`Venta_Servicio` (`Ven_id`, `Ser_id`, `VenS_id`) VALUES ('3', '4', '4');
INSERT INTO `estetica`.`Venta_Servicio` (`Ven_id`, `Ser_id`, `VenS_id`) VALUES ('1', '5', '5');
INSERT INTO `estetica`.`Venta_Servicio` (`Ven_id`, `Ser_id`, `VenS_id`) VALUES ('5', '5', '6');
INSERT INTO `estetica`.`Venta_Servicio` (`Ven_id`, `Ser_id`, `VenS_id`) VALUES ('6', '5', '7');
INSERT INTO `estetica`.`Venta_Servicio` (`Ven_id`, `Ser_id`, `VenS_id`) VALUES ('7', '1', '8');
INSERT INTO `estetica`.`Venta_Servicio` (`Ven_id`, `Ser_id`, `VenS_id`) VALUES ('8', '2', '9');
INSERT INTO `estetica`.`Venta_Servicio` (`Ven_id`, `Ser_id`, `VenS_id`) VALUES ('9', '3', '10');
INSERT INTO `estetica`.`Venta_Servicio` (`Ven_id`, `Ser_id`, `VenS_id`) VALUES ('12', '4', '11');
INSERT INTO `estetica`.`Venta_Servicio` (`Ven_id`, `Ser_id`, `VenS_id`) VALUES ('12', '5', '12');
INSERT INTO `estetica`.`Venta_Servicio` (`Ven_id`, `Ser_id`, `VenS_id`) VALUES ('12', '17', '13');
INSERT INTO `estetica`.`Venta_Servicio` (`Ven_id`, `Ser_id`, `VenS_id`) VALUES ('13', '18', '14');
INSERT INTO `estetica`.`Venta_Servicio` (`Ven_id`, `Ser_id`, `VenS_id`) VALUES ('14', '19', '15');
INSERT INTO `estetica`.`Venta_Servicio` (`Ven_id`, `Ser_id`, `VenS_id`) VALUES ('15', '20', '16');
INSERT INTO `estetica`.`Venta_Servicio` (`Ven_id`, `Ser_id`, `VenS_id`) VALUES ('16', '18', '17');
INSERT INTO `estetica`.`Venta_Servicio` (`Ven_id`, `Ser_id`, `VenS_id`) VALUES ('17', '19', '18');
INSERT INTO `estetica`.`Venta_Servicio` (`Ven_id`, `Ser_id`, `VenS_id`) VALUES ('18', '18', '19');
INSERT INTO `estetica`.`Venta_Servicio` (`Ven_id`, `Ser_id`, `VenS_id`) VALUES ('19', '18', '20');


UPDATE `estetica`.`Adquisicion` SET `Producto_Pro_id`='22' WHERE `idAdquisicion`='71';
UPDATE `estetica`.`Adquisicion` SET `Producto_Pro_id`='22' WHERE `idAdquisicion`='72';
UPDATE `estetica`.`Adquisicion` SET `Producto_Pro_id`='22' WHERE `idAdquisicion`='73';
UPDATE `estetica`.`Adquisicion` SET `Producto_Pro_id`='22' WHERE `idAdquisicion`='74';
UPDATE `estetica`.`Adquisicion` SET `Producto_Pro_id`='22' WHERE `idAdquisicion`='75';
UPDATE `estetica`.`Adquisicion` SET `Producto_Pro_id`='22' WHERE `idAdquisicion`='76';
UPDATE `estetica`.`Adquisicion` SET `Producto_Pro_id`='22' WHERE `idAdquisicion`='78';
UPDATE `estetica`.`Adquisicion` SET `Producto_Pro_id`='22' WHERE `idAdquisicion`='77';
UPDATE `estetica`.`Adquisicion` SET `Producto_Pro_id`='22' WHERE `idAdquisicion`='79';
UPDATE `estetica`.`Adquisicion` SET `Producto_Pro_id`='23' WHERE `idAdquisicion`='59';
UPDATE `estetica`.`Adquisicion` SET `Producto_Pro_id`='23' WHERE `idAdquisicion`='58';



INSERT INTO `estetica`.`Sesion` (`Ses_id`, `Ses_Fecha`, `Ses_avance`, `Ses_Emp_cc`, `Venta_Servicio_venS_id`) VALUES ('1', '2016-05-01', '1', '171182110', '1');
INSERT INTO `estetica`.`Sesion` (`Ses_id`, `Ses_Fecha`, `Ses_avance`, `Ses_Emp_cc`, `Venta_Servicio_venS_id`) VALUES ('2', '2016-05-02', '1', '171182110', '2');
INSERT INTO `estetica`.`Sesion` (`Ses_id`, `Ses_Fecha`, `Ses_avance`, `Ses_Emp_cc`, `Venta_Servicio_venS_id`) VALUES ('3', '2016-05-03', '1', '171182110', '3');
INSERT INTO `estetica`.`Sesion` (`Ses_id`, `Ses_Fecha`, `Ses_avance`, `Ses_Emp_cc`, `Venta_Servicio_venS_id`) VALUES ('4', '2016-05-04', '1', '171182110', '4');
INSERT INTO `estetica`.`Sesion` (`Ses_id`, `Ses_Fecha`, `Ses_avance`, `Ses_Emp_cc`, `Venta_Servicio_venS_id`) VALUES ('5', '2016-05-05', '1', '171182110', '5');
INSERT INTO `estetica`.`Sesion` (`Ses_id`, `Ses_Fecha`, `Ses_avance`, `Ses_Emp_cc`, `Venta_Servicio_venS_id`) VALUES ('6', '2016-05-06', '1', '171182110', '6');
INSERT INTO `estetica`.`Sesion` (`Ses_id`, `Ses_Fecha`, `Ses_avance`, `Ses_Emp_cc`, `Venta_Servicio_venS_id`) VALUES ('7', '2016-05-01', '1', '306232015', '7');
INSERT INTO `estetica`.`Sesion` (`Ses_id`, `Ses_Fecha`, `Ses_avance`, `Ses_Emp_cc`, `Venta_Servicio_venS_id`) VALUES ('8', '2016-05-02', '1', '306232015', '8');
INSERT INTO `estetica`.`Sesion` (`Ses_id`, `Ses_Fecha`, `Ses_avance`, `Ses_Emp_cc`, `Venta_Servicio_venS_id`) VALUES ('9', '2016-05-03', '1', '306232015', '9');
INSERT INTO `estetica`.`Sesion` (`Ses_id`, `Ses_Fecha`, `Ses_avance`, `Ses_Emp_cc`, `Venta_Servicio_venS_id`) VALUES ('10', '2016-05-04', '1', '306232015', '10');
INSERT INTO `estetica`.`Sesion` (`Ses_id`, `Ses_Fecha`, `Ses_avance`, `Ses_Emp_cc`, `Venta_Servicio_venS_id`) VALUES ('11', '2016-05-05', '1', '306232015', '11');
INSERT INTO `estetica`.`Sesion` (`Ses_id`, `Ses_Fecha`, `Ses_avance`, `Ses_Emp_cc`, `Venta_Servicio_venS_id`) VALUES ('12', '2016-05-06', '1', '306232015', '12');
INSERT INTO `estetica`.`Sesion` (`Ses_id`, `Ses_Fecha`, `Ses_avance`, `Ses_Emp_cc`, `Venta_Servicio_venS_id`) VALUES ('13', '2016-05-01', '1', '486626255', '13');
INSERT INTO `estetica`.`Sesion` (`Ses_id`, `Ses_Fecha`, `Ses_avance`, `Ses_Emp_cc`, `Venta_Servicio_venS_id`) VALUES ('14', '2016-05-02', '1', '486626255', '14');
INSERT INTO `estetica`.`Sesion` (`Ses_id`, `Ses_Fecha`, `Ses_avance`, `Ses_Emp_cc`, `Venta_Servicio_venS_id`) VALUES ('15', '2016-05-03', '1', '486626255', '15');
INSERT INTO `estetica`.`Sesion` (`Ses_id`, `Ses_Fecha`, `Ses_avance`, `Ses_Emp_cc`, `Venta_Servicio_venS_id`) VALUES ('16', '2016-05-04', '1', '486626255', '16');
INSERT INTO `estetica`.`Sesion` (`Ses_id`, `Ses_Fecha`, `Ses_avance`, `Ses_Emp_cc`, `Venta_Servicio_venS_id`) VALUES ('17', '2016-05-05', '1', '486626255', '17');
INSERT INTO `estetica`.`Sesion` (`Ses_id`, `Ses_Fecha`, `Ses_avance`, `Ses_Emp_cc`, `Venta_Servicio_venS_id`) VALUES ('18', '2016-05-06', '1', '599891092', '18');
INSERT INTO `estetica`.`Sesion` (`Ses_id`, `Ses_Fecha`, `Ses_avance`, `Ses_Emp_cc`, `Venta_Servicio_venS_id`) VALUES ('19', '2016-05-07', '1', '599891092', '19');
INSERT INTO `estetica`.`Sesion` (`Ses_id`, `Ses_Fecha`, `Ses_avance`, `Ses_Emp_cc`, `Venta_Servicio_VenS_id`) VALUES ('20', '2016-05-08', '1', '599891092', '20');


UPDATE `estetica`.`Inventario` SET `Sesion_Ses_id`='1' WHERE `idInventario`='58';
UPDATE `estetica`.`Inventario` SET `Sesion_Ses_id`='2' WHERE `idInventario`='59';
UPDATE `estetica`.`Inventario` SET `Sesion_Ses_id`='3' WHERE `idInventario`='60';
UPDATE `estetica`.`Inventario` SET `Sesion_Ses_id`='4' WHERE `idInventario`='61';
UPDATE `estetica`.`Inventario` SET `Sesion_Ses_id`='5' WHERE `idInventario`='62';
UPDATE `estetica`.`Inventario` SET `Sesion_Ses_id`='6' WHERE `idInventario`='63';
UPDATE `estetica`.`Inventario` SET `Sesion_Ses_id`='7' WHERE `idInventario`='64';
UPDATE `estetica`.`Inventario` SET `Sesion_Ses_id`='8' WHERE `idInventario`='65';
UPDATE `estetica`.`Inventario` SET `Sesion_Ses_id`='9' WHERE `idInventario`='66';
UPDATE `estetica`.`Inventario` SET `Sesion_Ses_id`='10' WHERE `idInventario`='67';
UPDATE `estetica`.`Inventario` SET `Sesion_Ses_id`='11' WHERE `idInventario`='68';
UPDATE `estetica`.`Inventario` SET `Sesion_Ses_id`='12' WHERE `idInventario`='69';
UPDATE `estetica`.`Inventario` SET `Sesion_Ses_id`='13' WHERE `idInventario`='70';
UPDATE `estetica`.`Inventario` SET `Sesion_Ses_id`='14' WHERE `idInventario`='71';
UPDATE `estetica`.`Inventario` SET `Sesion_Ses_id`='15' WHERE `idInventario`='72';
UPDATE `estetica`.`Inventario` SET `Sesion_Ses_id`='16' WHERE `idInventario`='73';
UPDATE `estetica`.`Inventario` SET `Sesion_Ses_id`='17' WHERE `idInventario`='74';
UPDATE `estetica`.`Inventario` SET `Sesion_Ses_id`='18' WHERE `idInventario`='75';
UPDATE `estetica`.`Inventario` SET `Sesion_Ses_id`='19' WHERE `idInventario`='76';
UPDATE `estetica`.`Inventario` SET `Sesion_Ses_id`='20' WHERE `idInventario`='77';

UPDATE `estetica`.`Inventario` SET  `Venta_Producto_Venp_id`='1' WHERE `idInventario`='1';
UPDATE `estetica`.`Inventario` SET  `Venta_Producto_Venp_id`='2' WHERE `idInventario`='2';
UPDATE `estetica`.`Inventario` SET  `Venta_Producto_Venp_id`='3' WHERE `idInventario`='3';
UPDATE `estetica`.`Inventario` SET  `Venta_Producto_Venp_id`='4' WHERE `idInventario`='4';
UPDATE `estetica`.`Inventario` SET  `Venta_Producto_Venp_id`='5' WHERE `idInventario`='5';
UPDATE `estetica`.`Inventario` SET  `Venta_Producto_Venp_id`='6' WHERE `idInventario`='6';
UPDATE `estetica`.`Inventario` SET  `Venta_Producto_Venp_id`='7' WHERE `idInventario`='7';
UPDATE `estetica`.`Inventario` SET  `Venta_Producto_Venp_id`='8' WHERE `idInventario`='8';
UPDATE `estetica`.`Inventario` SET  `Venta_Producto_Venp_id`='9' WHERE `idInventario`='9';
UPDATE `estetica`.`Inventario` SET  `Venta_Producto_Venp_id`='10' WHERE `idInventario`='10';

