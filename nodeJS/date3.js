//타임스탬프(timeStamp)
const date=new Date();
const dateToTimestamp=date.getTime(); //날짜와 시간을 숫자로 표현해준다.
const timeStampDate=new Date(1660044179608);
const timeStampToinit=new Date(1);
console.log('오늘날짜의 타임스탬프 : ',dateToTimestamp);
console.log('타임스탬프 초기 날짜 : ', timeStampToinit);