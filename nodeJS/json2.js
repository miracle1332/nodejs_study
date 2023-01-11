//JSON을 저장하는 방법 - JSON데이터를 저장하기.
const fs=require('fs');
const userList=[ //배열안에 객체가 들어 있는 것
    {name:'홍길동', age:50, address:'서울시 종로구'},
    {name:'김철수', age:25, address:'서울시 성북구'},
    {name:'이영희', age:32, address:'서울시 강남구'}
];

fs.writeFile('./list.json', JSON.stringify(userList), function(err){
    console.log('저장완료!');
});//파일을 저장하겠다는 명령/ 괄호 안 -> list.json으로 저장하겠다는 뜻
//JSON.stringify(저장할 배열객체):json 객체를 문자열로 저장하는 명령 //뒤에 function - 콜백함수를 써주어야함!
