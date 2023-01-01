const today=new Date();
const date1=new Date(2022,12-1,24);  // 시간 직접 주기
const date2=new Date(2022,12-1,25,18,30,20);  // 시간 직접 주기
console.log(today.toLocaleString());
console.log('크리스마스 이브->',date1.toLocaleString());
console.log('크리스마스 예배 시간->',date1.toLocaleString());
console.log('오늘 날짜 : %s',today.toLocaleDateString());
console.log('현재 시간 : %s',today.toLocaleTimeString());
console.log('현재 년도 : %s',today.getFullYear());
console.log('현재 월 : %s',today.getMonth()+1);
console.log('현재 일 : %s',today.getDate());
// today.getHours()-> 시  today.getMinutes()-> 분  today.getSeconds()-> 초
let price=78540000;
console.log(`물품의 가격은 ${price.toLocaleString()}원 입니다.`);
