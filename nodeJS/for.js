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
let index;
for(index=0; index<studentList.length; index++) {
    if(studentList[index].name === searchName) {
        break;
    } 
}
if(index==studentList.length){
    console.log('시험명단에 없습니다.');
} else {
    console.log(studentList[index].name, '의 성적표');
    console.log('국어점수 =>', studentList[index].kor);
    console.log('영어점수 =>', studentList[index].eng);
    console.log('수학점수 =>', studentList[index].mat);
}
