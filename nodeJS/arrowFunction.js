/*function hello() {
    console.log('안여하세요');
}*/
const hello = () => console.log('안녕하세요');
/*function sum(a,b) {
    return a+b;
}*/
const sum=(a,b) => a+b; //이렇게 쓰면 function과 return 표기가 생략됌!
/*function hello2(name) {
    console.log(name + '님 안녕하세요');
}*/
const hello2=name => console.log(`${name}님 안녕하세요.`); //매개변수가 하나이면 가로를 생략해도 된다!
hello('김철수');

