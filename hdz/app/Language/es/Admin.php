<?php
return [
    'login' => [
        'title' => 'Ingresa a tu cuenta',
        'invalidUsernamePassword' => 'Usuario y/o contraseña inválido.',
        'lockedMinutes' => 'Se ha inhabilitado el ingreso por %minutes% minutos',
        'attemptNumber' => '(intento: %attempt1% de %attempt2%)',
        'accountLocked' => 'La cuenta esta cerrada.',
        'rememberMe' => 'Recordarme',
        'button' => 'Ingresar'
    ],
    'dashboard' => [
        'menu' => 'Panel principal'
    ],
    'tickets' => [
        'menu' => 'Tickets',
        'showingResults' => 'Mostrando %x% al %y% de %z%',
        'totalReplies' => '%number% respuestas',
        'id' => 'Ticket ID',
        'helpdesk' => 'Escritorio de ayuda',
        'removeConfirmation' => '¿Realmente deseas eliminar estos tickets?',
        'showOverdueOnly' => 'Mostrar solo tickets vencidos',
        'active' => 'Activo',
        'attachmentRemoved' => 'El archivo adjunto ha sido borrado.',
        'messageSent' => 'Tu mensaje ha sido enviado.',
        'newTicket' => 'Nuevo ticket',
        'submitNewTicket' => 'Enviar nuevo ticket',
        'fullName' => 'Opcional. Si el ticket es enviado a un cliente existente, entonces solo necesitas ingresar el correo electrónico.',
        'departments' => 'Departmentos',
        'agentsAssigned' => 'Agentes asignados',
        'departmentsRemoveConfirmation' => '¿Realmente deseas borrar este departamento y sus tickets?',
        'departmentRemoved' => 'El departamento ha sido borrado.',
        'departmentUpdated' => 'El departamento ha sido actualizado.',
        'editDepartment' => 'Editar departamento',
        'newDepartment' => 'Nuevo departmento',
        'departmentCreated' => 'El nuevo departamento ha sido creado.',
        'notes' => 'Notas',
        'notesRemoveConfirmation' => '¿Realmente deseas eliminar esta nota?',
        'invalidRequest' => 'Petición inválida.',
        'noteRemoved' => 'La nota ha sido eliminada.',
        'noteUpdated' => 'La nota ha sido actualizada.',
        'enterNote' => 'Ingresa tu nota.',
        'notesSaved' => 'Tu nota ha sido agregada.',
        'addNote' => 'Agregar nota'
    ],
    'account' => [
        'menu' => 'Cuenta',
        'online' => 'En linea',
        'loginLog' => 'Registros de ingreso',
        'logout' => 'Salir',
        'profile' => 'Perfil',
        'changePassword' => 'Cambiar contraseña',
        'timezone' => 'Zona horaria',
        'timezoneDescription' => 'Si no seleccionas uno, se usará la zona horaria configurada en el software.',
        'passwordUpdated' => 'La contraseña ha sido cambiada.',
        'profileUpdated' => 'Tu perfil ha sido actualizado.',
        'avatarRemoved' => 'El avatar ha sido borrado.'
    ],
    'cannedResponses' => [
        'menu' => 'Respuestas preestablecidas',
        'removeConfirmation' => '¿Realmente deseas borrar estas respuestas preestablecidas?',
        'edit' => 'Estar respuesta preestablecida',
        'new' => 'Nueva respuesta preestablecida'
    ],
    'kb' => [
        'menu' => 'Base de conocimiento',
        'articles' => 'Artículos',
        'categories' => 'Categorías',
        'newCategory' => 'Nueva categoría',
        'category' => 'Categoría',
        'editCategory' => 'Editar categoría',
        'addSubcategory' => 'Agregar subcategoría',
        'newArticle' => 'Nuevo artículo',
        'removeCategory' => 'Eliminar categoría',
        'removeConfirmation' => '¿Realmente deseas borrar esta categoría y todo lo que contiene (subcategorías y artículos)?',
        'categoryRemoved' => 'La categoría ha sido borrada.',
        'categoryCreated' => 'Nueva categoría ha sido creada.',
        'categoryUpdated' => 'La categoría ha sido actualizada.',
        'article' => 'Artículo',
        'author' => 'Autor',
        'editArticle' => 'Editar artículo',
        'removeArticleConfirmation' => '¿Realmente deseas borrar este artículo?'
    ],
    'agents' => [
        'menu' => 'Agentes',
        'agentRemoved' => 'El agente ha sido borrado.',
        'registration' => 'Registro',
        'lastLogin' => 'Último inicio de sesión',
        'administrator' => 'Administrador',
        'agent' => 'Agente',
        'edit' => 'Editar agente',
        'new' => 'Nuevo agente',
        'informationUpdated' => 'La información del agente ha sido actualizada.',
        'removeConfirmation' => '¿Realmente deseas borrar a este agente?',
        'agentCreated' => 'El nuevo agente ha sido creado.',
        'assignedDepartments' => 'Departamentos asignados'
    ],
    'settings' => [
        'menu' => 'Configuración',
        'general' => 'Ajustes generales',
        'security' => 'Ajustes de seguridad',
        'tickets' => 'Ajustes de tickets',
        'kb' => 'Base de conocimientos',
        'emailAddresses' => 'Correos electrónicos',
        'emailTemplates' => 'Plantillas de correo',
        'changeLogo' => 'Cambiar logo',
        'logoRestored' => 'Se restauró el logo predeterminado.',
        'logoChanged' => 'El logo ha sido cambiado.',
        'brandName' => 'Nombre de la marca',
        'brandNameDescription' => 'El nombre de la empresa será usada como marca del soporte y para los correos salientes.',
        'windowTitle' => 'Título de la ventana',
        'windowTitleDescription' => 'Este título aparecerá en la pestaña del navegador web. Si la página está marcada como favorita, este será el título/nombre del sitio.',
        'pageSize' => 'Items por página',
        'pageSizeDescription' => 'Ingresa el número de items que se mostrarán por página.',
        'dateFormat' => 'Formato de fecha',
        'dateFormatDescription' => 'Define el formato de fecha para los clientes. [a]Ver la tabla de formato de fecha de PHP[/a]',
        'defaultTimezone' => 'Zona horaría predeterminada',
        'defaultTimezoneDescription' => 'Selecciona la zona horaria para los nuevos clientes o agentes.',
        'defaultServerTimezone' => 'Zona horaria predeterminada del servidor',
        'maintenanceMode' => 'Modo de mantenimiento',
        'maintenanceMessage' => 'Mensaje de mantenimiento',
        'recaptchaStatus' => 'Estado de reCAPTCHA',
        'siteKey' => 'Clave del sitio',
        'privateKey' => 'Clave privada',
        'maxLoginAttempts' => 'Número máximo de intentos de inicio de sesión',
        'minutesIpLocking' => 'Minutos de bloqueo de IP después de exceder el número máximo de intentos de inicio de sesión',
        'updated' => 'La configuración ha sido actualizada.',
        'displayOrderReplies' => 'Mostrar orden para respuestas de tickets',
        'ticketsPerPage' => 'Tickets por página',
        'ticketsPerPageDescription' => 'El número máximo de entradas que se mostrarán antes de dividirlas en varias páginas.',
        'repliesPerPage' => 'Respuestas por página',
        'repliesPerPageDescription' => 'El número máximo de respuestas de tickets que se mostrarán antes de dividirse en varias páginas.',
        'defaultDeadline' => 'Plazo de tiempo de respuesta predeterminado',
        'defaultDeadlineDescription' => 'Si el agente no responde dentro de estas horas, el ticket se marcará como vencido.',
        'defaultAutoClose' => 'Tiempo predeterminado para cerrar el ticket',
        'defaultAutoCloseDescription' => 'Si el cliente no responde luego de estas horas, el ticket será cerrado automáticamente.',
        'allowAttachments' => 'Permitir archivos adjuntos',
        'numberAttachments' => 'Número de archivos adjuntos permitidos',
        'maxUploadSize' => 'Peso máximo de los archivos',
        'maxUploadSizeDescription' => 'De acuerdo a la configuración de PHP de tu servidor, no puede ser mayor a %size%',
        'allowedFileTypes' => 'Tipo de archivos permitidos',
        'allowedFileTypesDescription' => 'Ingresa la extensión de los archivos adjuntos permitidos separado por comas.',
        'newestReplyFirst' => 'La respuesta más reciente primero',
        'oldestReplyFirst' => 'La respuesta más antigua primero',
        'articlesUnderCategory' => 'Artículos para mostrar en una categoría',
        'charLimitArticlePreview' => 'Límite de caracteres de vista previa del artículo',
        'charLimitArticlePreviewDescription' => 'El número máximo de caracteres que se mostrarán en las vistas previas de artículos.',
        'popularArticles' => 'Número de artículos populares para mostrar',
        'newestArticles' => 'Número de artículos más recientes para mostrar',
        'editEmailTemplate' => 'Editar plantilla de correo',
        'defaultEmailAddressDescription' => 'La dirección de correo electrónico predeterminada se utiliza para enviar notificaciones o mensajes de departamentos que no tienen una dirección de correo electrónico asociada.',
        'newEmailAddress' => 'Nuevo correo electrónico',
        'emailDeletionConfirm' => '¿Realmente quieres eliminar este correo electrónico? ',
        'outgoing' => 'Saliente',
        'host' => 'Host',
        'port' => 'Puerto',
        'encryption' => 'Encriptación',
        'incoming' => 'Entrante',
        'incomingInformation' => 'El sistema eliminará todos los correos electrónicos del buzón una vez descargados. Esto se hace para garantizar el mejor rendimiento del proceso de gestión de correo electrónico en el servidor web. Si desea una copia de seguridad de los correos electrónicos, le recomendamos que cree un nuevo buzón al que reenvíe todos los correos entrantes.',
        'editEmailAddress' => 'Editar correo electrónico',
        'emailTemplateUpdated' => 'Se actualizó la plantilla de correo electrónico.',
        'defaultEmailChanged' => 'Se cambió la dirección de correo electrónico predeterminada. ',
        'emailRemoved' => 'Se eliminó la dirección de correo electrónico. ',
        'smtpHost' => 'Host SMTP',
        'smtpPort' => 'Puerto SMTP',
        'smtpEncryption' => 'Encriptación SMTP',
        'incomingHost' => 'Host estrante',
        'incomingPort' => 'Puerto entrante',
        'incomingUsername' => 'Usuario entrante',
        'incomingPassword' => 'Contraseña entrante',
        'emailCreated' => 'Se ha agregado un nuevo correo electrónico.',
        'emailUpdated' => 'El correo electrónico se ha actualizado.',
    ],
    'tools' => [
        'menu' => 'Herramientas',
        'customFields' => 'Campos personalizados',
        'fieldTitle' => 'Título del campo',
        'fieldType' => 'Tipo de campo',
        'required' => 'Requerido',
        'newCustomField' => 'Nuevo campo personalizado',
        'editCustomField' => 'Editar campo personalizado ',
        'textField' => 'Campo de texto',
        'textArea' => 'Área de texto',
        'checkbox' => 'Caja para marcar (Checkbox)',
        'radio' => 'Radio',
        'dropdownSelect' => 'Selección desplegable',
        'date' => 'Fecha',
        'defaultValue' => 'Valor por defecto',
        'options' => 'Opciones',
        'optionsDescription' => 'Ingrese una opción por línea. Cada línea será una opción entre la que sus clientes pueden elegir',
        'select' => 'Seleccione',
        'customFieldInserted' => 'Se ha creado un nuevo campo personalizado.',
        'customFieldUpdated' => 'Los campos personalizados se han actualizado.',
        'customFieldConfirm' => '¿Realmente desea eliminar este campo personalizado?',
        'invalidCustomField' => 'Campo personalizado no válido.',
        'customFieldRemoved' => 'Se ha eliminado el campo personalizado.'
    ],
    'users' => [
        'menu' => 'Usuarios',
        'newUser' => 'Nuevo usuario',
        'editUser' => 'Editar usuario',
        'removeUserConfirmation' => '¿Realmente quieres eliminar a este usuario y sus tickets?',
        'userRemoved' => 'El usuario ha sido eliminado.',
        'notifyNewAccount' => 'Enviar correo electrónico al usuario con información de la cuenta',
        'accountCreated' => 'Se ha creado la cuenta de usuario.',
        'accountUpdated' => 'Se actualizó la cuenta de usuario.'
    ],
    'form' => [
        'username' => 'Nombre de usuario',
        'password' => 'Contraseña',
        'searchTicket' => 'Buscar ticket',
        'keyword' => 'Palabra clave',
        'dateOpened' => 'Fecha de apertura ',
        'lastUpdate' => 'Última actualización',
        'department' => 'Departmento',
        'allDepartments' => 'Todos los departamentos',
        'status' => 'Estado',
        'search' => 'Buscar',
        'open' => 'Abierto',
        'answered' => 'Respondido',
        'awaiting_reply' => 'Esperando respuesta',
        'in_progress' => 'En progreso',
        'closed' => 'Cerrado',
        'overdue' => 'Vencido',
        'todayAt' => 'Hoy a las %date%',
        'yesterdayAt' => 'Ayer a las %date%',
        'subject' => 'Asunto',
        'lastReply' => 'Última respuesta ',
        'priority' => 'Prioridad',
        'Low' => 'Baja',
        'Medium' => 'Media',
        'High' => 'Alta',
        'Urgent' => 'Urgente',
        'Emergency' => 'Emergencia',
        'Critical' => 'Crítico',
        'massAction' => 'Acción en masa',
        'noChange' => 'No cambiar',
        'submit' => 'Enviar',
        'delete' => 'Borrar',
        'cancel' => 'Cancelar',
        'general' => 'General',
        'reply' => 'Responder',
        'createdOn' => 'Creado en %date%',
        'updatedOn' => 'Actualizado en %date%',
        'save' => 'Guardar',
        'to' => 'A',
        'quickInsert' => 'Inserción rápida',
        'attachments' => 'Adjuntos',
        'allowedFiles' => 'Archivos permitidos',
        'browse' => 'Buscar',
        'chooseFile' => 'Elegir archivo',
        'quote' => 'Citar',
        'staff' => 'Agente',
        'uploadImage' => 'Cargar imagen',
        'total' => 'Total',
        'download' => 'Descargar',
        'dropImageHere' => 'Suelta la imagen aquí para subir',
        'fullName' => 'Nombre completo',
        'email' => 'Correo electrónico',
        'dateCreated' => 'Fecha de creación',
        'createdBy' => 'Creado por',
        'title' => 'Título',
        'message' => 'Mensaje',
        'specialTags' => 'Etiquetas especiales',
        'clientName' => 'Nombre del cliente',
        'clientEmail' => 'Correo electrónico del cliente',
        'goBack' => 'Volver',
        'type' => 'Tipo',
        'public' => 'Público',
        'private' => 'Privado',
        'action' => 'Acción',
        'categoryName' => 'Nombre de la categoría',
        'parentCategory' => 'Categoría principal ',
        'rootCategory' => 'Categoría raíz ',
        'view' => 'Ver',
        'all' => 'Todo',
        'views' => 'Vistas',
        'displayOrder' => 'Orden de visualización',
        'beginningList' => 'Al inicio de la lista',
        'endList' => 'Al final de la lista',
        'afterItem' => 'Después de %item%',
        'notModify' => 'No modificar',
        'never' => 'Nunca',
        'active' => 'Activo',
        'locked' => 'Bloqueado',
        'leaveBlankNotChange' => 'Dejar en blanco para no cambiarlo.',
        'yes' => 'Si',
        'no' => 'No',
        'enable' => 'Habilitado',
        'disable' => 'Deshabilitado',
        'default' => 'Predeterminado',
        'setDefault' => 'Establecer como predeterminado',
        'edit' => 'Editar',
        'emailName' => 'Nombre del correo',
        'none' => 'Ninguno',
        'signature' => 'Firma',
        'newPassword' => 'Nueva contraseña',
        'existingPassword' => 'Contraseña actual',
        'confirm' => 'Confirmar',
        'enterExistingPassword' => 'Ingresa tu contraseña actual.',
        'enterNewPassword' => 'Ingresa tu nueva contraseña.',
        'manage' => 'Administrar',
        'avatar' => 'Avatar',
        'deleteAvatar' => 'Borrar avatar',
        'user' => 'Usuario',
    ],
    'error' => [
        'recordsNotFound' => 'No se encontraron registros. ',
        'noItemsSelected' => 'No seleccionaste ningún ticket.',
        'invalidCannedResponse' => 'Respuesta preestablecida no válida.',
        'ticketNotFound' => 'El ticket no ha sido encontrado.',
        'ticketNotPermission' => 'No tienes permisos para ver este ticket.',
        'invalidDepartment' => 'Departamento no válido.',
        'invalidStatus' => 'Eastado no válido.',
        'invalidPriority' => 'Prioridad no válida.',
        'enterMessage' => 'Ingresa tu mensaje.',
        'enterValidEmail' => 'Ingresa un correo electrónico válido.',
        'enterSubject' => 'Ingresa el asunto.',
        'fileNotAllowed' => 'Archivo no permitido.',
        'fileBig' => 'El archivo es muy pesado. Lo máximo permitido es %size%',
        'enterTitle' => 'Ingresa el título',
        'enterCategoryName' => 'Ingresa el nombre de la categoría.',
        'selectParentCategory' => 'Seleccione una categoría principal válida.',
        'selectCategoryType' => 'Seleccione el tipo de categoría.',
        'selectCategory' => 'Seleccione una categoría válida .',
        'selectArticleType' => 'Seleccione el tipo de artículo.',
        'enterContent' => 'Ingrese el contenido.',
        'enterDepartmentName' => 'Ingrese el nombre del departamento.',
        'selectDepartmentType' => 'Seleccione un tipo de departamento válido.',
        'enterFullName' => 'Ingrese el nombre completo.',
        'enterUsername' => 'Ingrese un nombre de usuario válido.',
        'usernameTaken' => 'El nombre de usuario está siendo utilizado por otro agente.',
        'emailTaken' => 'Otro usuario está utilizando el correo electrónico.',
        'selectTypeAccess' => 'Seleccione un tipo de acceso válido.',
        'enterPassword' => 'Ingrese una contraseña válida, debe tener al menos 6 caracteres de longitud.',
        'selectLogo' => 'Seleccione una imagen válida para el logotipo.',
        'logoSize' => 'El logo es demasiado grande. El tamaño máximo es %size%',
        'uploadingLogo' => 'Error al cargar el logo, inténtalo de nuevo.',
        'enterSiteName' => 'Ingrese el nombre de la marca.',
        'enterWindowTitle' => 'Ingrese el título de la ventana.',
        'enterPageSize' => 'Ingrese un número de items por página válido.',
        'enterDateFormat' => 'Ingrese el formato de fecha.',
        'selectTimezone' => 'Seleccione una zona horaria válida.',
        'selectCaptchaStatus' => 'Seleccione el estado del captcha.',
        'enterSiteKey' => 'Ingrese la clave del sitio.',
        'enterPrivateKey' => 'Ingrese la clave privada.',
        'enterMaxAttempts' => 'Ingrese un número válido para el máximo de intentos de inicio de sesión.',
        'enterMinutesIpLocking' => 'Ingrese un número válido para minutos de bloqueo de IP. ',
        'emailExists' => 'La dirección de correo ya existe.',
        'selectOutgoing' => 'Seleccione un tipo válido de correo electrónico saliente.',
        'selectIncoming' => 'Seleccione un tipo válido de correo electrónico entrante.',
        'emailTakenDepartment' => 'Otro correo electrónico ha tomado este departamento.',
        'passwordsNotMatches' => 'Las nuevas contraseñas ingresadas no coinciden.',
        'wrongExistingPassword' => 'Tu contraseña actual es incorrecta.',
        'passwordTooShort' => 'La nueva contraseña debe tener al menos 6 caracteres.',
        'selectDepartment' => 'Seleccione un departamento.',
        'departmentNotExist' => 'El departamento seleccionado no existe.'
    ],
    'twoFactor' => [
        'title' => 'Autenticación de dos factores',
        'info' => 'Proteja su cuenta con un inicio de sesión de alta seguridad.',
        'downloadApp' => 'Descarga la aplicación para %1%Android%0% o %2%iPhone y iPad%0%',
        'secretKey' => 'Llave secreta',
        'verificationCode' => 'Código de verificación',
        'enter2FA' => 'Ingrese los 6 dígitos de su aplicación móvil.',
        'backupCode' => '¡Guarde este código!',
        'activate' => 'Activar la autenticación de dos factores',
        'deactivate' => 'Desactivar la autenticación de dos factores',
        'activated' => 'Se ha activado la autenticación de dos factores.',
        'deactivated' => 'La autenticación de dos factores se desactivó.',
        'error' => [
            'isActive' => 'La autenticación de dos factores ya está activa.',
            'invalidCode' => 'Código de verificación invalido.',
            'invalidPassword' => 'Contraseña invalida.'
        ]
    ]
];