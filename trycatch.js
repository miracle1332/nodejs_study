try{
    let num=20;
    printMessage(num);
    console.log('수행완료')
} catch(e) {
    console.log(e);
}
console.log('프로그램 종료');

function printMessage(num) {
    console.log('받은 숫자:', num);
}