const studentList=[
    {name:'김철수', kor:90, eng:80, mat:86},
    {name:'오혜린', kor:98, eng:100, mat:100},
    {name:'홍길동', kor:90, eng:80, mat:86}
];

/*studentList.forEach(function (student) {//특수한 함수가 나오는 반복문!
    console.log(student);
}); */

//studentList.forEach(student => console.log(student)); - 화살표 함수

const scores=[85,96,74,63,90];
let sum=0;
scores.forEach(function(s){
    sum+=s;
});
console.log('점수의 총합=',sum);