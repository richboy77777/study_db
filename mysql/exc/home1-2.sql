use world;

insert into webbook (
seq
,image
,bookseries
,bookname
,author
,publisher
,releasedate
,price
,sales
,pointnumber
,salesindex
,memberreview
,rating
,deliverydate
,eventgifts
,relatedproducts
,ebookprice
) values (
1
,'image'
,'이지스퍼블리싱-Do it! 시리즈'
,'Do it! HTML + CSS + 자바스크립트 웹 표준의 정석 한 권으로 끝내는 웹 기본 교과서'
,'고경희'
,'이지스퍼블리싱'
,'2021-01-01'
,27000
,10
,1500
,49899
,'회원리뷰'
,9
,'2021-01-01'
,'[대학생X취준생] 지치지 않는자, 점수를 잡는다! - 리유저블텀블러/한국문학 담요/ 슬라이드 파일 증정'
,11
,19000
);

select * from webbook;