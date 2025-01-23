-- Create extensions
  CREATE EXTENSION IF NOT EXISTS google_ml_integration;
  CREATE EXTENSION IF NOT EXISTS vector;
-- Create table
CREATE TABLE
  flujos_bancochat ( "tema" VARCHAR(255),
    "desc_tema" VARCHAR(255),
    "subtema" VARCHAR(255),
    "desc_subtema" VARCHAR(255),
    "detalle" VARCHAR(500),
    "cod_rta" VARCHAR(255),
    "rta_agente" VARCHAR(255));

-- Populate table
INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Tarjeta de Crédito", "Gestiones vinculadas a Tarjeta de Crédito", "Solicitar", "Solicitar una Tarjeta de Crédito", "Permite iniciar el tramite para obtener una tarjeta de crédito en el Banco Demo, tanto para clientes existentes como clientes nuevos.", "TC-SOLICITUD", "Deriva a: Tarjeta de Crédito'\'Solicitar (TC-SOLICITUD)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Tarjeta de Crédito", "Gestiones vinculadas a Tarjeta de Crédito", "Ver resumen", "Acceda a tus últimos 3 resúmenes disponibles", "Permite obtener una copia del último resumen de tarjeta de crédito y los 2 periodos previos. Se entrega en formato PDF para descargar o compartir. El resumen de tarjeta de crédito contiene el detalle de consumos realizados por el titular y sus adicionales en el periodo inmediato posterior al actual.", "TC-RESUMEN", "Deriva a: Tarjeta de Crédito'\'Ver resumen (TC-RESUMEN)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Tarjeta de Crédito", "Gestiones vinculadas a Tarjeta de Crédito", "Últimos consumos", "Consultar los gastos de tus Tarjetas de Crédito", "Permite consultar los gastos o consumos realizados mediante tarjeta de crédito durante el periodo en curso y que aún no fueron liquidados en el resumen de tarjeta.", "TC-CONSUMOS", "Deriva a: Tarjeta de Crédito'\'Últimos consumos (TC-CONSUMOS)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Tarjeta de Crédito", "Gestiones vinculadas a Tarjeta de Crédito", "Saldo y vencimiento", "Consultar las fechas de cierre, vencimientos y saldos a pagar.", "Permite consultar el pago minimo y saldo -tanto en pesos como dolares- del último resumen de tarjeta de crédito, así como las fechas de vencimientos (anterior, actual y proxima) y de cierre. Esta información permite al cliente saber que montos deberá pagar y en que fecha.", "TC-SALDOS", "Deriva a: Tarjeta de Crédito'\'Saldo y vencimiento (TC-SALDOS)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Tarjeta de Crédito", "Gestiones vinculadas a Tarjeta de Crédito", "Límites y disponibles", "Verificar límites y disponibles de tus Tarjetas de Crédito.", "Permite consultar el limite vigente de la tarjeta de crédito y cuando tiene disponible para consumir.", "TC-LIMITES", "Deriva a: Tarjeta de Crédito'\'Límites y disponibles (TC-LIMITES)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Tarjeta de Crédito", "Gestiones vinculadas a Tarjeta de Crédito", "Aumento de límite", "Incrementar el límite de tu Tarjeta de Crédito", "Permite solicitar un aumento del límite de la tarjeta de crédito, ya sea de forma permanente o transitoria.", "TC-AUMENTO-LIMITE", "Deriva a: Tarjeta de Crédito'\'Aumento de límite (TC-AUMENTO-LIMITE)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Tarjeta de Crédito", "Gestiones vinculadas a Tarjeta de Crédito", "Cambio de modalidad", "Cambiar la modalidad de pago de tu resumen", "Permite cambiar la modalidad de pago del resumen de tarjeta de crédito. Por ejemplo, si se paga el 10% del total del resumen, se puede modificar para pagar el 20% o el 50%.", "TC-MODALIDAD", "Deriva a: Tarjeta de Crédito'\'Cambio de modalidad (TC-MODALIDAD)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Tarjeta de Crédito", "Gestiones vinculadas a Tarjeta de Crédito", "Fecha de vencimiento", "Cambiar la fecha de vencimiento de tu resumen", "Permite cambiar la fecha de vencimiento del resumen de tarjeta de crédito. Por ejemplo, si la fecha de vencimiento es el 10 de cada mes, se puede modificar para que sea el 20.", "TC-VENCIMIENTO", "Deriva a: Tarjeta de Crédito'\'Fecha de vencimiento (TC-VENCIMIENTO)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Tarjeta de Crédito", "Gestiones vinculadas a Tarjeta de Crédito", "Blanqueo de PIN", "Blanquear el PIN de tu Tarjeta de Crédito", "Permite blanquear el PIN de la tarjeta de crédito en caso de olvido. Se genera un nuevo PIN y se envía por SMS al titular de la tarjeta.", "TC-PIN", "Deriva a: Tarjeta de Crédito'\'Blanqueo de PIN (TC-PIN)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Tarjeta de Crédito", "Gestiones vinculadas a Tarjeta de Crédito", "Bloqueo por robo o extravío", "Bloquear tu Tarjeta de Crédito por robo o extravío", "Permite bloquear la tarjeta de crédito en caso de robo o extravío. El bloqueo es inmediato e impide que se realicen nuevas compras o extracciones de efectivo con la tarjeta.", "TC-BLOQUEO", "Deriva a: Tarjeta de Crédito'\'Bloqueo por robo o extravío (TC-BLOQUEO)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Tarjeta de Crédito", "Gestiones vinculadas a Tarjeta de Crédito", "Reposición de plástico", "Solicitar la reposición de tu Tarjeta de Crédito", "Permite solicitar la reposición de la tarjeta de crédito en caso de deterioro, robo o extravío. Se emite una nueva tarjeta con los mismos datos que la anterior y se envía al domicilio del titular.", "TC-REPOSICION", "Deriva a: Tarjeta de Crédito'\'Reposición de plástico (TC-REPOSICION)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Tarjeta de Crédito", "Gestiones vinculadas a Tarjeta de Crédito", "Habilitar para uso en el exterior", "Habilitar tu Tarjeta de Crédito para usar en el exterior", "Permite habilitar la tarjeta de crédito para su uso en el exterior. Por defecto, las tarjetas de crédito están habilitadas solo para uso en el país de origen. Para poder utilizarla en el extranjero, es necesario habilitarla de forma específica.", "TC-EXTERIOR", "Deriva a: Tarjeta de Crédito'\'Habilitar para uso en el exterior (TC-EXTERIOR)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Tarjeta de Crédito", "Gestiones vinculadas a Tarjeta de Crédito", "Desbloqueo", "Desbloquear tu Tarjeta de Crédito", "Permite desbloquear una tarjeta de crédito que fue bloqueada previamente. El desbloqueo es inmediato y permite volver a utilizar la tarjeta para realizar compras o extracciones de efectivo.", "TC-DESBLOQUEO", "Deriva a: Tarjeta de Crédito'\'Desbloqueo (TC-DESBLOQUEO)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Tarjeta de Crédito", "Gestiones vinculadas a Tarjeta de Crédito", "Adicionales", "Gestionar tarjetas adicionales", "Permite gestionar las tarjetas adicionales asociadas a una tarjeta de crédito. Se pueden dar de alta nuevas tarjetas adicionales, bloquear o desbloquear las existentes, o modificar los límites de gasto.", "TC-ADICIONALES", "Deriva a: Tarjeta de Crédito'\'Adicionales (TC-ADICIONALES)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Préstamos", "Gestiones vinculadas a Préstamos", "Solicitar", "Solicitar un Préstamo", "Permite solicitar un préstamo personal, prendario o hipotecario.", "PR-SOLICITUD", "Deriva a: Préstamos'\'Solicitar (PR-SOLICITUD)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Préstamos", "Gestiones vinculadas a Préstamos", "Simular", "Simular un Préstamo", "Permite simular un préstamo para conocer las cuotas, la tasa de interés y el plazo de devolución.", "PR-SIMULAR", "Deriva a: Préstamos'\'Simular (PR-SIMULAR)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Préstamos", "Gestiones vinculadas a Préstamos", "Ver mis préstamos", "Consultar tus Préstamos", "Permite consultar los préstamos vigentes, la cuota a pagar, la fecha de vencimiento y el saldo deudor.", "PR-MIS-PRESTAMOS", "Deriva a: Préstamos'\'Ver mis préstamos (PR-MIS-PRESTAMOS)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Préstamos", "Gestiones vinculadas a Préstamos", "Pagar préstamo", "Pagar una cuota de tu Préstamo", "Permite pagar una cuota de un préstamo mediante transferencia bancaria o tarjeta de crédito.", "PR-PAGAR", "Deriva a: Préstamos'\'Pagar préstamo (PR-PAGAR)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Préstamos", "Gestiones vinculadas a Préstamos", "Cancelar préstamo", "Cancelar tu Préstamo", "Permite cancelar un préstamo de forma anticipada. Se debe abonar el saldo deudor más los intereses correspondientes.", "PR-CANCELAR", "Deriva a: Préstamos'\'Cancelar préstamo (PR-CANCELAR)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Préstamos", "Gestiones vinculadas a Préstamos", "Solicitar refinanciación", "Refinanciar tu Préstamo", "Permite solicitar la refinanciación de un préstamo para obtener un nuevo plazo de devolución y una nueva tasa de interés.", "PR-REFINANCIAR", "Deriva a: Préstamos'\'Solicitar refinanciación (PR-REFINANCIAR)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Cuentas", "Gestiones vinculadas a Cuentas", "Abrir una cuenta", "Abrir una Cuenta", "Permite abrir una cuenta corriente, caja de ahorro o cuenta sueldo.", "CU-ABRIR", "Deriva a: Cuentas'\'Abrir una cuenta (CU-ABRIR)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Cuentas", "Gestiones vinculadas a Cuentas", "Ver mis cuentas", "Consultar tus Cuentas", "Permite consultar las cuentas bancarias, el saldo disponible, los últimos movimientos y el CBU.", "CU-MIS-CUENTAS", "Deriva a: Cuentas'\'Ver mis cuentas (CU-MIS-CUENTAS)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Cuentas", "Gestiones vinculadas a Cuentas", "Transferencias", "Realizar una Transferencia", "Permite realizar una transferencia bancaria a una cuenta propia o de terceros.", "CU-TRANSFERENCIAS", "Deriva a: Cuentas'\'Transferencias (CU-TRANSFERENCIAS)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Cuentas", "Gestiones vinculadas a Cuentas", "Pagos", "Realizar un Pago", "Permite pagar servicios, impuestos o tarjetas de crédito.", "CU-PAGOS", "Deriva a: Cuentas'\'Pagos (CU-PAGOS)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Cuentas", "Gestiones vinculadas a Cuentas", "Inversiones", "Realizar una Inversión", "Permite invertir en plazos fijos, fondos comunes de inversión o acciones.", "CU-INVERSIONES", "Deriva a: Cuentas'\'Inversiones (CU-INVERSIONES)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Cuentas", "Gestiones vinculadas a Cuentas", "Solicitar chequera", "Solicitar una Chequera", "Permite solicitar una chequera para una cuenta corriente.", "CU-CHEQUERA", "Deriva a: Cuentas'\'Solicitar chequera (CU-CHEQUERA)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Cuentas", "Gestiones vinculadas a Cuentas", "Bloquear cuenta", "Bloquear tu Cuenta", "Permite bloquear una cuenta bancaria en caso de robo o extravío de la tarjeta de débito.", "CU-BLOQUEAR", "Deriva a: Cuentas'\'Bloquear cuenta (CU-BLOQUEAR)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Cuentas", "Gestiones vinculadas a Cuentas", "Desbloquear cuenta", "Desbloquear tu Cuenta", "Permite desbloquear una cuenta bancaria que fue bloqueada previamente.", "CU-DESBLOQUEAR", "Deriva a: Cuentas'\'Desbloquear cuenta (CU-DESBLOQUEAR)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Cuentas", "Gestiones vinculadas a Cuentas", "Cerrar cuenta", "Cerrar tu Cuenta", "Permite cerrar una cuenta bancaria. Se debe tener en cuenta que la cuenta no debe tener saldo deudor.", "CU-CERRAR", "Deriva a: Cuentas'\'Cerrar cuenta (CU-CERRAR)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Tarjetas de Débito", "Gestiones vinculadas a Tarjetas de Débito", "Solicitar", "Solicitar una Tarjeta de Débito", "Permite solicitar una tarjeta de débito para una cuenta bancaria.", "TD-SOLICITUD", "Deriva a: Tarjetas de Débito'\'Solicitar (TD-SOLICITUD)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Tarjetas de Débito", "Gestiones vinculadas a Tarjetas de Débito", "Ver PIN", "Consultar el PIN de tu Tarjeta de Débito", "Permite consultar el PIN de la tarjeta de débito en caso de olvido. El PIN se envía por SMS al titular de la tarjeta.", "TD-PIN", "Deriva a: Tarjetas de Débito'\'Ver PIN (TD-PIN)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Tarjetas de Débito", "Gestiones vinculadas a Tarjetas de Débito", "Blanqueo de PIN", "Blanquear el PIN de tu Tarjeta de Débito", "Permite blanquear el PIN de la tarjeta de débito en caso de olvido. Se genera un nuevo PIN y se envía por SMS al titular de la tarjeta.", "TD-BLANQUEO-PIN", "Deriva a: Tarjetas de Débito'\'Blanqueo de PIN (TD-BLANQUEO-PIN)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Tarjetas de Débito", "Gestiones vinculadas a Tarjetas de Débito", "Bloquear por robo o extravío", "Bloquear tu Tarjeta de Débito por robo o extravío", "Permite bloquear la tarjeta de débito en caso de robo o extravío. El bloqueo es inmediato e impide que se realicen nuevas compras o extracciones de efectivo con la tarjeta.", "TD-BLOQUEO", "Deriva a: Tarjetas de Débito'\'Bloquear por robo o extravío (TD-BLOQUEO)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Tarjetas de Débito", "Gestiones vinculadas a Tarjetas de Débito", "Reposición de plástico", "Solicitar la reposición de tu Tarjeta de Débito", "Permite solicitar la reposición de la tarjeta de débito en caso de deterioro, robo o extravío. Se emite una nueva tarjeta con los mismos datos que la anterior y se envía al domicilio del titular.", "TD-REPOSICION", "Deriva a: Tarjetas de Débito'\'Reposición de plástico (TD-REPOSICION)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Tarjetas de Débito", "Gestiones vinculadas a Tarjetas de Débito", "Habilitar para uso en el exterior", "Habilitar tu Tarjeta de Débito para usar en el exterior", "Permite habilitar la tarjeta de débito para su uso en el exterior. Por defecto, las tarjetas de débito están habilitadas solo para uso en el país de origen. Para poder utilizarla en el extranjero, es necesario habilitarla de forma específica.", "TD-EXTERIOR", "Deriva a: Tarjetas de Débito'\'Habilitar para uso en el exterior (TD-EXTERIOR)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Tarjetas de Débito", "Gestiones vinculadas a Tarjetas de Débito", "Desbloqueo", "Desbloquear tu Tarjeta de Débito", "Permite desbloquear una tarjeta de débito que fue bloqueada previamente. El desbloqueo es inmediato y permite volver a utilizar la tarjeta para realizar compras o extracciones de efectivo.", "TD-DESBLOQUEO", "Deriva a: Tarjetas de Débito'\'Desbloqueo (TD-DESBLOQUEO)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Seguros", "Gestiones vinculadas a Seguros", "Contratar", "Contratar un Seguro", "Permite contratar un seguro de vida, hogar, auto o viaje.", "SE-CONTRATAR", "Deriva a: Seguros'\'Contratar (SE-CONTRATAR)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Seguros", "Gestiones vinculadas a Seguros", "Ver mis seguros", "Consultar tus Seguros", "Permite consultar los seguros vigentes, la cuota a pagar, la fecha de vencimiento y la cobertura.", "SE-MIS-SEGUROS", "Deriva a: Seguros'\'Ver mis seguros (SE-MIS-SEGUROS)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Seguros", "Gestiones vinculadas a Seguros", "Pagar seguro", "Pagar la cuota de tu Seguro", "Permite pagar la cuota de un seguro mediante transferencia bancaria o tarjeta de crédito.", "SE-PAGAR", "Deriva a: Seguros'\'Pagar seguro (SE-PAGAR)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Seguros", "Gestiones vinculadas a Seguros", "Renovar", "Renovar tu Seguro", "Permite renovar un seguro que está por vencer.", "SE-RENOVAR", "Deriva a: Seguros'\'Renovar (SE-RENOVAR)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Seguros", "Gestiones vinculadas a Seguros", "Denunciar siniestro", "Denunciar un Siniestro", "Permite denunciar un siniestro de un seguro de vida, hogar, auto o viaje.", "SE-DENUNCIA", "Deriva a: Seguros'\'Denunciar siniestro (SE-DENUNCIA)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Seguros", "Gestiones vinculadas a Seguros", "Solicitar asistencia", "Solicitar Asistencia", "Permite solicitar asistencia médica, legal o técnica en caso de un siniestro.", "SE-ASISTENCIA", "Deriva a: Seguros'\'Solicitar asistencia (SE-ASISTENCIA)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Inversiones", "Gestiones vinculadas a Inversiones", "Plazos fijos", "Abrir un Plazo Fijo", "Permite abrir un plazo fijo para invertir dinero a un plazo y tasa de interés determinados.", "IN-PF", "Deriva a: Inversiones'\'Plazos fijos (IN-PF)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Inversiones", "Gestiones vinculadas a Inversiones", "Fondos comunes de inversión", "Invertir en Fondos Comunes de Inversión", "Permite invertir en fondos comunes de inversión para diversificar el riesgo y obtener una rentabilidad potencial.", "IN-FCI", "Deriva a: Inversiones'\'Fondos comunes de inversión (IN-FCI)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Inversiones", "Gestiones vinculadas a Inversiones", "Acciones", "Invertir en Acciones", "Permite invertir en acciones de empresas que cotizan en la bolsa de valores.", "IN-ACCIONES", "Deriva a: Inversiones'\'Acciones (IN-ACCIONES)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Inversiones", "Gestiones vinculadas a Inversiones", "Bonos", "Invertir en Bonos", "Permite invertir en bonos del gobierno o de empresas.", "IN-BONOS", "Deriva a: Inversiones'\'Bonos (IN-BONOS)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Inversiones", "Gestiones vinculadas a Inversiones", "Ver mis inversiones", "Consultar tus Inversiones", "Permite consultar las inversiones vigentes, la rentabilidad, el plazo y el capital invertido.", "IN-MIS-INVERSIONES", "Deriva a: Inversiones'\'Ver mis inversiones (IN-MIS-INVERSIONES)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Inversiones", "Gestiones vinculadas a Inversiones", "Retirar inversión", "Retirar tu Inversión", "Permite retirar una inversión, total o parcialmente.", "IN-RETIRAR", "Deriva a: Inversiones'\'Retirar inversión (IN-RETIRAR)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Inversiones", "Gestiones vinculadas a Inversiones", "Reinvertir", "Reinvertir tu Inversión", "Permite reinvertir una inversión que ha vencido.", "IN-REINVERTIR", "Deriva a: Inversiones'\'Reinvertir (IN-REINVERTIR)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Sucursales y Cajeros", "Gestiones vinculadas a Sucursales y Cajeros", "Buscar sucursal", "Buscar una Sucursal", "Permite buscar una sucursal del banco por ubicación, código postal o nombre.", "SC-BUSCAR", "Deriva a: Sucursales y Cajeros'\'Buscar sucursal (SC-BUSCAR)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Sucursales y Cajeros", "Gestiones vinculadas a Sucursales y Cajeros", "Buscar cajero", "Buscar un Cajero", "Permite buscar un cajero automático por ubicación, código postal o nombre.", "SC-BUSCAR-CAJERO", "Deriva a: Sucursales y Cajeros'\'Buscar cajero (SC-BUSCAR-CAJERO)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Sucursales y Cajeros", "Gestiones vinculadas a Sucursales y Cajeros", "Ver horarios de atención", "Consultar los Horarios de Atención", "Permite consultar los horarios de atención de una sucursal o cajero automático.", "SC-HORARIOS", "Deriva a: Sucursales y Cajeros'\'Ver horarios de atención (SC-HORARIOS)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Sucursales y Cajeros", "Gestiones vinculadas a Sucursales y Cajeros", "Ver servicios disponibles", "Consultar los Servicios Disponibles", "Permite consultar los servicios disponibles en una sucursal o cajero automático.", "SC-SERVICIOS", "Deriva a: Sucursales y Cajeros'\'Ver servicios disponibles (SC-SERVICIOS)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Sucursales y Cajeros", "Gestiones vinculadas a Sucursales y Cajeros", "Solicitar turno", "Solicitar un Turno", "Permite solicitar un turno para ser atendido en una sucursal.", "SC-TURNO", "Deriva a: Sucursales y Cajeros'\'Solicitar turno (SC-TURNO)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Contraseña", "Gestiones vinculadas a tu Contraseña", "Cambiar", "Cambiar tu Contraseña", "Permite cambiar la contraseña de acceso a la banca online.", "CO-CAMBIAR", "Deriva a: Contraseña'\'Cambiar (CO-CAMBIAR)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Contraseña", "Gestiones vinculadas a tu Contraseña", "Recuperar", "Recuperar tu Contraseña", "Permite recuperar la contraseña de acceso a la banca online en caso de olvido.", "CO-RECUPERAR", "Deriva a: Contraseña'\'Recuperar (CO-RECUPERAR)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Contraseña", "Gestiones vinculadas a tu Contraseña", "Desbloquear", "Desbloquear tu Contraseña", "Permite desbloquear la contraseña de acceso a la banca online en caso de que haya sido bloqueada por intentos fallidos de inicio de sesión.", "CO-DESBLOQUEAR", "Deriva a: Contraseña'\'Desbloquear (CO-DESBLOQUEAR)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Usuario", "Gestiones vinculadas a tu Usuario", "Cambiar", "Cambiar tu Usuario", "Permite cambiar el nombre de usuario de acceso a la banca online.", "US-CAMBIAR", "Deriva a: Usuario'\'Cambiar (US-CAMBIAR)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Usuario", "Gestiones vinculadas a tu Usuario", "Recuperar", "Recuperar tu Usuario", "Permite recuperar el nombre de usuario de acceso a la banca online en caso de olvido.", "US-RECUPERAR", "Deriva a: Usuario'\'Recuperar (US-RECUPERAR)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Contacto", "Gestiones vinculadas al Contacto con el banco", "Teléfono", "Contactar por Teléfono", "Permite obtener el número de teléfono de contacto del banco para realizar consultas o reclamos.", "CT-TELEFONO", "Deriva a: Contacto'\'Teléfono (CT-TELEFONO)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Contacto", "Gestiones vinculadas al Contacto con el banco", "Email", "Contactar por Email", "Permite obtener la dirección de correo electrónico de contacto del banco para realizar consultas o reclamos.", "CT-EMAIL", "Deriva a: Contacto'\'Email (CT-EMAIL)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Contacto", "Gestiones vinculadas al Contacto con el banco", "Chat", "Contactar por Chat", "Permite iniciar una conversación con un representante del banco a través del chat online.", "CT-CHAT", "Deriva a: Contacto'\'Chat (CT-CHAT)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Contacto", "Gestiones vinculadas al Contacto con el banco", "Redes sociales", "Contactar por Redes sociales", "Permite contactar con el banco a través de sus redes sociales, como Facebook, Twitter o Instagram.", "CT-REDES", "Deriva a: Contacto'\'Redes sociales (CT-REDES)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Contacto", "Gestiones vinculadas al Contacto con el banco", "Formulario de contacto", "Contactar por Formulario de contacto", "Permite enviar un mensaje al banco a través de un formulario de contacto en la página web.", "CT-FORMULARIO", "Deriva a: Contacto'\'Formulario de contacto (CT-FORMULARIO)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Banca Online", "Gestiones vinculadas a la Banca Online", "Acceder", "Acceder a la Banca Online", "Permite acceder a la banca online para realizar operaciones bancarias, consultar saldos, pagar servicios, etc.", "BO-ACCEDER", "Deriva a: Banca Online'\'Acceder (BO-ACCEDER)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Banca Online", "Gestiones vinculadas a la Banca Online", "Registrarse", "Registrarse en la Banca Online", "Permite registrarse en la banca online para obtener un usuario y contraseña.", "BO-REGISTRARSE", "Deriva a: Banca Online'\'Registrarse (BO-REGISTRARSE)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Banca Online", "Gestiones vinculadas a la Banca Online", "Configurar", "Configurar la Banca Online", "Permite configurar las opciones de la banca online, como el idioma, la moneda, las notificaciones, etc.", "BO-CONFIGURAR", "Deriva a: Banca Online'\'Configurar (BO-CONFIGURAR)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Banca Online", "Gestiones vinculadas a la Banca Online", "Seguridad", "Seguridad de la Banca Online", "Permite obtener información sobre la seguridad de la banca online, como las medidas de seguridad que se implementan para proteger las cuentas de los usuarios.", "BO-SEGURIDAD", "Deriva a: Banca Online'\'Seguridad (BO-SEGURIDAD)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Banca Móvil", "Gestiones vinculadas a la Banca Móvil", "Descargar app", "Descargar la App de Banca Móvil", "Permite descargar la aplicación de banca móvil para dispositivos Android o iOS.", "BM-DESCARGAR", "Deriva a: Banca Móvil'\'Descargar app (BM-DESCARGAR)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Banca Móvil", "Gestiones vinculadas a la Banca Móvil", "Acceder", "Acceder a la Banca Móvil", "Permite acceder a la banca móvil para realizar operaciones bancarias, consultar saldos, pagar servicios, etc.", "BM-ACCEDER", "Deriva a: Banca Móvil'\'Acceder (BM-ACCEDER)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Banca Móvil", "Gestiones vinculadas a la Banca Móvil", "Configurar", "Configurar la Banca Móvil", "Permite configurar las opciones de la banca móvil, como el idioma, la moneda, las notificaciones, etc.", "BM-CONFIGURAR", "Deriva a: Banca Móvil'\'Configurar (BM-CONFIGURAR)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Banca Móvil", "Gestiones vinculadas a la Banca Móvil", "Seguridad", "Seguridad de la Banca Móvil", "Permite obtener información sobre la seguridad de la banca móvil, como las medidas de seguridad que se implementan para proteger las cuentas de los usuarios.", "BM-SEGURIDAD", "Deriva a: Banca Móvil'\'Seguridad (BM-SEGURIDAD)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Turnos", "Gestiones vinculadas a Turnos", "Solicitar", "Solicitar un Turno", "Permite solicitar un turno para ser atendido en una sucursal del banco.", "TU-SOLICITAR", "Deriva a: Turnos'\'Solicitar (TU-SOLICITAR)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Turnos", "Gestiones vinculadas a Turnos", "Consultar", "Consultar un Turno", "Permite consultar el estado de un turno que ha sido solicitado previamente.", "TU-CONSULTAR", "Deriva a: Turnos'\'Consultar (TU-CONSULTAR)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Turnos", "Gestiones vinculadas a Turnos", "Cancelar", "Cancelar un Turno", "Permite cancelar un turno que ha sido solicitado previamente.", "TU-CANCELAR", "Deriva a: Turnos'\'Cancelar (TU-CANCELAR)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Reclamos", "Gestiones vinculadas a Reclamos", "Presentar", "Presentar un Reclamo", "Permite presentar un reclamo por un servicio o producto del banco.", "RE-PRESENTAR", "Deriva a: Reclamos'\'Presentar (RE-PRESENTAR)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Reclamos", "Gestiones vinculadas a Reclamos", "Consultar", "Consultar un Reclamo", "Permite consultar el estado de un reclamo que ha sido presentado previamente.", "RE-CONSULTAR", "Deriva a: Reclamos'\'Consultar (RE-CONSULTAR)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Otros", "Otras gestiones", "Información general", "Obtener información general", "Permite obtener información general sobre el banco, como sus productos, servicios, horarios de atención, etc.", "OT-INFORMACION", "Deriva a: Otros'\'Información general (OT-INFORMACION)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Otros", "Otras gestiones", "Ayuda", "Obtener ayuda", "Permite obtener ayuda sobre cómo utilizar los servicios del banco, como la banca online, la banca móvil, etc.", "OT-AYUDA", "Deriva a: Otros'\'Ayuda (OT-AYUDA)");

INSERT INTO flujos_bancochat (tema, desc_tema, subtema, desc_subtema, detalle, cod_rta, rta_agente)
VALUES ("Otros", "Otras gestiones", "Sugerencias", "Enviar sugerencias", "Permite enviar sugerencias al banco sobre cómo mejorar sus productos o servicios.", "OT-SUGERENCIAS", "Deriva a: Otros'\'Sugerencias (OT-SUGERENCIAS)");

-- Creo una tabla con los stop words para normalizar texto
CREATE TABLE
  stop_words ( word TEXT
  PRIMARY KEY
    );
INSERT INTO
  stop_words (word)
VALUES
  ('a'),
  ('acá'),
  ('ahí'),
  ('al'),
  ('algo'),
  ('algunas'),
  ('algunos'),
  ('allá'),
  ('allí'),
  ('ambos'),
  ('ante'),
  ('antes'),
  ('aquel'),
  ('aquella'),
  ('aquellas'),
  ('aquellos'),
  ('aquí'),
  ('arriba'),
  ('así'),
  ('atrás'),
  ('aun'),
  ('aunque'),
  ('bajo'),
  ('bastante'),
  ('bien'),
  ('cabe'),
  ('cada'),
  ('casi'),
  ('como'),
  ('con'),
  ('contra'),
  ('cual'),
  ('cuales'),
  ('cualquier'),
  ('cualquiera'),
  ('cuan'),
  ('cuando'),
  ('cuanto'),
  ('cuanta'),
  ('cuantas'),
  ('cuantos'),
  ('de'),
  ('del'),
  ('demás'),
  ('dentro'),
  ('desde'),
  ('donde'),
  ('dos'),
  ('el'),
  ('ella'),
  ('ellas'),
  ('ellos'),
  ('en'),
  ('entre'),
  ('era'),
  ('erais'),
  ('éramos'),
  ('eran'),
  ('eres'),
  ('es'),
  ('esa'),
  ('esas'),
  ('ese'),
  ('eso'),
  ('esos'),
  ('esta'),
  ('estaba'),
  ('estabais'),
  ('estábamos'),
  ('estaban'),
  ('estáis'),
  ('estamos'),
  ('están'),
  ('estar'),
  ('estas'),
  ('este'),
  ('esto'),
  ('estos'),
  ('estoy'),
  ('etc'),
  ('fin'),
  ('fue'),
  ('fuera'),
  ('fueron'),
  ('fui'),
  ('fuiste'),
  ('fuisteis'),
  ('ha'),
  ('había'),
  ('habíais'),
  ('habíamos'),
  ('habían'),
  ('habéis'),
  ('habido'),
  ('haber'),
  ('habrá'),
  ('habrán'),
  ('habrás'),
  ('habré'),
  ('habréis'),
  ('habría'),
  ('habríais'),
  ('habríamos'),
  ('habrían'),
  ('habéis'),
  ('han'),
  ('has'),
  ('hasta'),
  ('hay'),
  ('haya'),
  ('hayáis'),
  ('hayamos'),
  ('hayan'),
  ('hayas'),
  ('he'),
  ('hemos'),
  ('hube'),
  ('hubiera'),
  ('hubierais'),
  ('hubiéramos'),
  ('hubieran'),
  ('hubieras'),
  ('hubiese'),
  ('hubieseis'),
  ('hubiésemos'),
  ('hubiesen'),
  ('hubieses'),
  ('hubo'),
  ('la'),
  ('las'),
  ('le'),
  ('les'),
  ('lo'),
  ('los'),
  ('más'),
  ('me'),
  ('mi'),
  ('mis'),
  ('mia'),
  ('mías'),
  ('mío'),
  ('míos'),
  ('mientras'),
  ('mio'),
  ('mios'),
  ('mucha'),
  ('muchas'),
  ('mucho'),
  ('muchos'),
  ('muy'),
  ('nada'),
  ('ni'),
  ('no'),
  ('nos'),
  ('nosotras'),
  ('nosotros'),
  ('nuestra'),
  ('nuestras'),
  ('nuestro'),
  ('nuestros'),
  ('nunca'),
  ('o'),
  ('os'),
  ('otra'),
  ('otras'),
  ('otro'),
  ('otros'),
  ('para'),
  ('pero'),
  ('poco'),
  ('poca'),
  ('pocas'),
  ('pocos'),
  ('por'),
  ('porque'),
  ('que'),
  ('quien'),
  ('quienes'),
  ('qué'),
  ('se'),
  ('sea'),
  ('seáis'),
  ('seamos'),
  ('sean'),
  ('seas'),
  ('según'),
  ('ser'),
  ('si'),
  ('sí'),
  ('siempre'),
  ('sin'),
  ('sobre'),
  ('sois'),
  ('solamente'),
  ('solo'),
  ('somos'),
  ('son'),
  ('soy'),
  ('su'),
  ('sus'),
  ('suya'),
  ('suyas'),
  ('suyo'),
  ('suyos'),
  ('tal'),
  ('tan'),
  ('tanto'),
  ('te'),
  ('tendremos'),
  ('tendrá'),
  ('tendrán'),
  ('tendrás'),
  ('tendré'),
  ('tendréis'),
  ('tendría'),
  ('tendríais'),
  ('tendríamos'),
  ('tendrían'),
  ('tenemos'),
  ('tener'),
  ('tenga'),
  ('tengáis'),
  ('tengamos'),
  ('tengan'),
  ('tengas'),
  ('tengo'),
  ('ti'),
  ('tiene'),
  ('tienen'),
  ('tienes'),
  ('todo'),
  ('todos'),
  ('tu'),
  ('tus'),
  ('tuya'),
  ('tuyas'),
  ('tuyo'),
  ('tuyos'),
  ('tú'),
  ('un'),
  ('una'),
  ('unas'),
  ('uno'),
  ('unos'),
  ('vosotras'),
  ('vosotros'),
  ('vuestra'),
  ('vuestras'),
  ('vuestro'),
  ('vuestros'),
  ('ya'),
  ('yo')
ON
  CONFLICT (word) DO NOTHING;
-- Creo una función para normalizar el texto asi obtener mejores precisiones en la respuesta
CREATE OR REPLACE FUNCTION
  normalizar_texto(texto VARCHAR)
  RETURNS VARCHAR AS $$
DECLARE
  resultado VARCHAR := texto;
BEGIN
  -- Eliminar signos de puntuación
  resultado := REGEXP_REPLACE(resultado, '[[:punct:]]', '', 'g');
  -- Eliminar acentos
  resultado := unaccent(resultado);
  -- Convertir a minúsculas
  resultado := LOWER(resultado);
  -- Eliminar stop words
  resultado := REGEXP_REPLACE( resultado, '\m(' || ARRAY_TO_STRING(ARRAY(
      SELECT
        word
      FROM
        stop_words), '|') || ')\M', '', 'gi' ); RETURN resultado;
END
  ; $$
  LANGUAGE plpgsql;
-- Agrego dos columnas una para el texto normalizado y otra para el embedding
ALTER TABLE
  flujos_bancochat ADD COLUMN text_normalized text NULL;
ALTER TABLE
  flujos_bancochat ADD COLUMN embedding vector NULL;
UPDATE
  flujos_bancochat
SET
  text_normalized = normalizar_texto(tema|| ' ' || subtema|| ' ' || desc_subtema|| ' ' || detalle) ;
UPDATE
  flujos_bancochat
SET
  embedding = embedding('text-embedding-005',text_normalized);


-- Crea una funcion para devolver la respuesta de Gemini con el contexto de flujos del banco.
CREATE OR REPLACE FUNCTION Gemini_Bank_Assistant (texto text)
RETURNS VARCHAR AS $$
DECLARE 
resultado VARCHAR := '';
BEGIN
resultado:= (
  WITH temp (user_text,cod_rta,tema,subtema,desc_subtema) AS (SELECT texto as user_text, cod_rta,tema,subtema,desc_subtema FROM flujos_bancochat
ORDER BY embedding <=> embedding('text-embedding-005', texto)::vector LIMIT 5)
  select cod_rta from (
SELECT cod_rta,tema,subtema,
(ML_PREDICT_ROW('projects/my-first-project-424319/locations/us-central1/publishers/google/models/gemini-1.5-flash-002:generateContent',
          json_build_object(
          'contents',
          json_build_array(
              json_build_object(
                  'role', 'user',
                  'parts', json_build_array(
                      json_build_object('text', 'Sos un agente derivador de flujos bancarios. El usuario esta solicitando lo siguiente: ' || user_text ||' Necesito que clasifiques correctamente la operacion o el flujo que el usuario desea realizar segun las siguientes etiquetas: ' || desc_subtema || ' Devuelve una respuesta con 3 valores: 1) MATCH: si los 2 flujos coinciden al menos en un 85 % o no: YES o NO 2) PORCENTAJE: porcentaje de coincidencia, asegúrate de que este porcentaje sea preciso 3) DIFERENCIA: una descripción clara, breve y sencilla de la diferencia entre los 2 flujos. Recuerda que ii la diferencia radica en el tipo de servicio o en el tipo de operacion solicitada,debes catalogar como una NO coincidencia 4) OPERACION: dime que operacion quiere realizar el usuario. Debes identificar y calificar correctamente las operaciones como consultas, transferencias, pagos, inversiones, etc. ')
                  )
              )
          )
        )
  ) -> 'candidates'
    -> 0
    -> 'content') as LLM_RESPONSE
FROM  temp
) as X
where cast(LLM_RESPONSE as VARCHAR(500)) like '%MATCH:%YES%' limit 1);
RETURN resultado;
END
; $$ LANGUAGE plpgsql;

-- Pruebas

SELECT
  Gemini_bank_assistant('Quiero ver el saldo de mi caja de ahorro en pesos.');
SELECT
  Gemini_bank_assistant('Hola, quiero saber cuánto dinero tengo en mi cuenta.');
SELECT
  Gemini_bank_assistant('Necesito hacer una transferencia a mi hija.');
SELECT
  Gemini_bank_assistant('Me robaron la tarjeta de débito.');
SELECT
  Gemini_bank_assistant('Quiero ver el saldo de mi caja de ahorro en pesos.');
SELECT
  Gemini_bank_assistant('Necesito obtener el CBU de mi cuenta corriente.');
SELECT
  Gemini_bank_assistant('¿Cuáles fueron los últimos movimientos de mi cuenta sueldo?');
SELECT
  Gemini_bank_assistant('Transferir $5000 desde mi caja de ahorro a la cuenta corriente.');
SELECT
  Gemini_bank_assistant('Pagar la factura de Edenor con mi tarjeta de débito.');
SELECT
  Gemini_bank_assistant('Quiero configurar un plazo fijo por $10.000 a 30 días.');
