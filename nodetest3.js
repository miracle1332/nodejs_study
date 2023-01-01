let str1='10';
let str2='20';
let num1=10;
let num2=20;
console.log('두문자 더하기=%d', str1+str2);
console.log('두 숫자 더하기=%s', num1+num2);
const isNum=isNaN(20); //isNan은 is Not a Number을 줄여 숫자가 아닌지 맞는지 판별해주는 것.
const isNum2=isNaN(-20);
const isNum3=isNaN('50');
const isNum4=isNaN('hello');
console.log(isNum); //숫자가 맞기 때문에 false가 나온다.
console.log(isNum2);
console.log(isNum3); //숫자인데 문자로 쓴걸로 인식한다.그래서 fasle나옴.
console.log(isNum4);//이건 true가 나온다.
const str="computer";
console.log('문자열의 길이:',str.length);//문자의 길이를 출력.
console.log(str[0]); //문자도 배열이므로 c라는 문자가 출력된다.
console.log(str[5]);
console.log(`${str}라는 문자에서 마지막 글자는 ${str[str.length-1]}입니다.`);
console.log(str.indexOf('com'));//해당문자열이 몇번째인지 찾아준다.
console.log(str.indexOf('put'));
console.log(str.indexOf('the')); //못찾으면 -1을 돌려준다