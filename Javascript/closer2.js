//클로저를 통한 은닉화
/*function Hello(name) {//생성자 함수
    this._name=name;
}
Hello.prototype.say = function () {
    console.log(this._name + '님 안녕하세요');
}

let hello1=new Hello('홍길동');
let hello2=new Hello('김철수');
let hello3=new Hello('이영희');
hello1.say();
hello2.say();
hello3.say();
hello1._name='도적놈';//.을 이용해 외부에서 함수에 접근가능
hello1.say();*/

function Hello(name) {
    let _name=name;//_name은 closer를 통해 참조하는 변수가 유지는 되고 있지만 지역변수기 때문에 외부에서 접근은 못함
    return function() {//익명 클로저
        console.log(_name + '님 안녕하세요');
    };
}
let hello1=Hello('홍길동');
//console.log(hello1);
let hello2=Hello('김철수');
let hello3=Hello('이영희');
hello1();
hello2();
hello3();

