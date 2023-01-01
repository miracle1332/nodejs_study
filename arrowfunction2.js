const students=[
    {name:'김철수', kor:90, eng:50, mat:60},
    {name:'이영희', kor:90, eng:50, mat:60},
    {name:'홍길동', kor:90, eng:50, mat:60},
    {name:'정도전', kor:90, eng:50, mat:60},
    {name:'손흥민', kor:90, eng:50, mat:60}
];
//총점을 구하는 함수(화살표 함수)
const total = (k,e,m) => k+e+m;
//forEach 이용해서 각 성적출력
students.forEach(student => {
    console.log(`${student.name}님의 총점 : ${total(student.kor, student.eng, student.mat)}`)
});

const sumAndPrint= (calcResult, callback) => {
    callback(calcResult);
}