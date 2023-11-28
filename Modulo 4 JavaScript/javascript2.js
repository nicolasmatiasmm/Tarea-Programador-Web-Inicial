//Ejercicio 2
let mayor = 0;

let numeros = [60,200,90,80,70];


for (let i=0;i<5;i++){
  if (numeros[i]>mayor) {
    mayor = numeros[i];
  }

}
alert("Mayor: " + mayor);
