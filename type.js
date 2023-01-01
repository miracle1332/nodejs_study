const pi=3.14;
console.log('pi변수의 타입 = ', typeof pi); //pi변수의 타입은 NUmber라고 출력된다.
console.log('hello 문자 타입 : %s', typeof 'hello');
console.log('[]의 타입 : %s', typeof []); //배열의 타입은 객체이다.
console.log('{}의 타입 : %s', typeof {});
console.log('true의 타입 : %s', typeof true);
console.log(typeof (10>20)); 
const num=!1; //not은 
console.log(num);

//삼항 연산자
let num1=20;
let num2=50;
let max=num1>num2?num1:num2; //조건?참일때 수행할 문장 : 거짓일때 수행할 문장;
console.log(`두 수 중에 큰 값은 ${max}입니다`);

const array1=[10,20,30];
const array2=[];
arr1.length > 0 ? console.log(arr1):console.log('배열값이 비었습니다.')
/*const result=array1.length>0?array1:'배열값이 비었습니다.';
console.log(`${result}`);*/