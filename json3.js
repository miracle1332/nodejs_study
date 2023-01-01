//json파일 불러오기!
const fs=require('fs');  //readFile() -> 읽어오는 명령!
fs.readFile('./list.json', (err, data) => { //화살표 함수
    if(err) { 
        console.log('파일을 열 수 없습니다.');
    } else { //에러가 안났을때
        const json=JSON.parse(data.toString()); //상수 json에 data를 String형태로 가져와줌.
        for(let i=0; i<json.length; i++) {
            console.log(`이름 : ${json[i].name} 나이 : ${json[i].age}`)
        }
    }
});