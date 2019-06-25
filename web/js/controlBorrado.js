function controlBorrado(path, estudiante)
{
    swal({
        title: "¿Esta Seguro?",
        text: "Va a eliminar el estudiante "+estudiante,
        icon: "warning",
        buttons: true,
        dangerMode: true,
        })
        .then((willDelete) => {
        if (willDelete) {
            window.location.replace(path);
            };
        });
        return false;
}

function controlBorradoUsuario(path, usuario)
{
    swal({
        title: "¿Esta Seguro?",
        text: "Va a eliminar al usuario "+usuario,
        icon: "warning",
        buttons: true,
        dangerMode: true,
        })
        .then((willDelete) => {
        if (willDelete) {
            window.location.replace(path);
            };
        });
        return false;
}

function controlBorradoGeneral(path, general)
{
    swal({
        title: "¿Esta Seguro?",
        text: "Va a eliminar: "+general,
        icon: "warning",
        buttons: true,
        dangerMode: true,
        })
        .then((willDelete) => {
        if (willDelete) {
            window.location.replace(path);
            };
        });
        return false;
}

function controlGuardado(path, estudiante)
{
    swal("Guardado", "El estudiante "+estudiante+" ha sido agregado", "success");
}