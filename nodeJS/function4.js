function plus(num1, num2) {
    return num1+num2;
}
function minus(num1, num2) {
    return num1-num2;
}
function calc(num1, num2, func) { //함수를 변수에 넣을수도있지만 밑에서 처럼 함수를 호출하여 쓸 수도 있다!
    return func(num1, num2);
}
let p=plus(2,5); //함수를 변수에 넣는것!
console.log('plus 타입은?', typeof plus);
console.log('p 타입은?', typeof p);
console.log('두 수의 합=%d', p(20,30));
console.log('두 수의 합=', clac(60,40,minus));