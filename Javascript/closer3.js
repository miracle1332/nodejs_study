let num;
for(num=1; num<=10; num++) {
    (function(num) {
        setTimeout(function () {
            console.log(num);
        },100);
    })(num);
}