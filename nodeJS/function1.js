//선언적 함수
function message(data) {
    console.log(data,'코로나 조심합시다'); //직접 이름을 주어서 만든 함수를 선언적 함수라고 함!
}
//표현식 함수
const corona = function () {
    console.log('오늘의 코로나 발생 현황 15345');
}
//화살표 함수
const message2 = (data) => {
    console.log('금요일부터 %s까지 쉽니다',data);
}
message('우리모두');
//함수를 변수에 넣을 수 있따. 변수도 함수를 갖고있따.
const msg=message;
console.log(msg); //msg는 message값을 가진 함수라는 것을 알려줌.
corona;
message2('15일');