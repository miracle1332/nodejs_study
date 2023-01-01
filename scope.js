//함수의 유효범위(scope)

//전역변수
let resultSubtract;
function subtract(a,b) {
    resultSubtract=a-b;
}
subtract(200,60);
console.log(resultSubtract);

function multiplay(a,b) {
    let result=a*b;
    return result;
}
const r=multiplay(10,10);
console.log(r);