//ECMA Script6(ES6) - 자바스크립트에서 새로나온 문법 

//es5 스타일 문법
function hello5(name) { //선언적 함수
    console.log(name + '님 안녕하세요 ES5입니다.');
}
//es6 스타일 문법
const hello6 = (name) => { //화살표 함수
    console.log(name + '님 안녕하세요 ES6입니다.');
}

hello5('뭉이언니' + '질가세요'); //es6에서는 + (플러스) 연산자를 사용할 일이 거의 없어졌다.
hello6('뭉이사랑해', '잘가세요'); //es6에서는 +(플러스) 대신 ,(콤마) 연산자를 사용한다.

//var na='홍길동';//var을 쓰지 않아야 하는 이유 : 1. 같은 이름의 변수를 밑에 또 써도 오류가 나지 않는다.
//var na='김철수'; //2. 콘솔로그엔 두번째 변수값인 김철수만 나온다.

let na='홍길동'; //위의 오류를 방지하기 위하여 let이라고 변수를 만든다.//let은 같은 변수이름을 사용할수 없다.
let age=50;
let hello='안녕하세요';
//' ' 대신 ` ` <- 백틱을 이용한(backtick)을 이용한 포맷팅
console.log(`${na}의 나이는 ${age}세 입니다.`);//★★★이렇게 씁니다. `(백틱)--${변수}--변수가 아닌 문자`(백틱)
let statement=`${hello} 내 이름은 %{na}입니다.`;
console.log(statement);
const pi=3.14; //상수
