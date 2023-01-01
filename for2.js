/*let fruits=['사과','복숭아','바나나'];
for(const choice of fruits) {
    console.log('과일 : ', choice); //choice는 계속 재사용하는 변수 배열하나 만들어주고 배열값을 하나하나 넘겨주는 변수임!
}*/

let sum=0;
for(let i=0; i<=100; i++) {
    sum+=i;
}
console.log('1부터 100까지의 합=%d', sum);
const studentList=[
    {name:'김철수', kor:90, eng:80, mat:86},
    {name:'오혜린', kor:98, eng:100, mat:100},
    {name:'홍길동', kor:90, eng:80, mat:86}
];
let searchName='오혜린';
let findName;
for(let student of studentList) {
    if(student.name === searchName) {
        findName=student;
    }
}
if(findName == undefined) {
    console.log('시험명단에 없습니다.');
} else {
    console.log(findName.name, '의 성적표');
    console.log('국어점수 =>', findName.kor);
    console.log('영어점수 =>', findName.eng);
    console.log('수학점수 =>', findName.mat);
}