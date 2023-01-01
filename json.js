//JSON(Java Script Object Notation) - 자바스크립트 객체 표기법
const person={};
person.name='OHHYERIN';
person.job='개발자';
console.log(person.name);
console.log(person);
const product={ //직접 만들때는 이렇게...
    name:'망고통조림',
    price:13000,
    origin:'필리핀'
};
product.price=15000;
console.log(product.price);
const na='name'
console.log(product['name']);
console.log(product.name);