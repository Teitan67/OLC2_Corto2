let t=-1;
function new_temp(){
    t++;
    return "t"+t;
}

function analizar(){
    t=-1;
    document.getElementById("codSalida").value="";
    let txt = document.getElementById("codEntrada").value;
    console.log(txt);
    gramatica.parse(txt);
}
function agregarC3D(codigo){
    let c3d=document.getElementById("codSalida").value;
    c3d+=codigo+"\n";
    document.getElementById("codSalida").value=c3d;
}