function getyymmdd(date) {
    const yyyy=date.getFullYear();
    const mm=date.getMonth() < 9 ?`0${date.getMonth()+1}`:date.getMonth()+1;
    const dd=date.getDate() < 10 ? `0${date.getDate()}`:date.getDate();
    return `${yyyy}-${mm}-${dd}`;
}
const date1=getyymmdd(new Date());
const date2=getyymmdd(new Date(2022,12-1,24));
console.log("오늘 날짜 : ", date1);
console.log('크리스마스이브 : ', date2);