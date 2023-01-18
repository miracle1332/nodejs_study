/*클로저(closer) : 내부함수가 참조하는 외부함수의 지역변수가 외부함수가 리턴된 후에도 유효성이 유지될 때, 이 내부함수를 클로저라고 합니다.*/
function grandParent(g1,g2) {
    const g3=3;//외부함수의 지역변수
    return function parent(p1,p2) {
        const p3=33;//외부함수의 지역변수
        return function child(c1,c2) {//이게 클로저
            const c3=333;
            return g1 + g2 + g3 + p1 + p2 + p3 + c1 + c2 + c3;//g,p는 외부함수의 지역변수로 외부함수들은 이미 리턴됐지만 유효성은 유지중
        }
    }
}
const parentFunc=grandParent(1,2);//parent함수가 parentFunc 상수에 들어감
const childFunc=parentFunc(11,22);//child함수가 childFunc 상수에 들어감
console.log(childFunc(111,222));