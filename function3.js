const students=[
    {name:'김철수', score:90},
    {name:'이영희', score:67},
    {name:'홍길동', score:82},
    {name:'정도전', score:78},
    {name:'손흥민', score:45}
];
//등급을 구하는 함수
function getDegree(score) {
    if(score>=90) {
        return 'A';
    }else if(score>=80){
        return 'B';
    }else if(score>=70){
        return 'C';
    }else if(score>=60){
        return 'D';
    }else if(score>=50){
        return 'E';
    }
    return 'F';
}
//모든 학생들의 점수를 가지고 등급을 출력
students.forEach((student) => {
    const result=`이름 : ${student.name}  등급 :  ${getDegree(student.score)}` ;
    console.log(result);
});