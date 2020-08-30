Twoscoops Django, TwoScoops PDF
8/29/2020, Sun

#admin
hal:hal

#tutorial
Creating a CMS
https://subscription.packtpub.com/book/web_development/9781838981952/10/ch10lvl1sec67/creating-a-cms

http://127.0.0.1:8000/accounts/login/


#commands
1. docker-compose run --rm database psql -U tom -h database 
2. docker-compose build
3. docker-compose up -d --build
4. docker-compose exec web python manage.py makemigrations
5. docker-compose exec web python manage.py migrate
6. docker-compose exec web python manage.py createsuperuser
7. add course subjects in admin 
    a. "title": "Mathematics",
    b. "title": "Music",
    c. "title": "Physics",
    d. "title": "Programming",
8. docker-compose exec web python manage.py dumpdata courses --indent=2
9. mkdir sources/fixtures
   docker-compose exec web python manage.py dumpdata courses --indent=2 --output=courses/fixtures/subjects.json
   docker-compose exec web python manage.py loaddata subjects.json  
10. docker exec -it twoscoops_web_1 bash

   



#notes
PYTHONDONTWRITEBYTECODE: Prevents Python from writing pyc files to disc (equivalent to python -B option)
PYTHONUNBUFFERED: Prevents Python from buffering stdout and stderr (equivalent to python -u option)
"load" and "dump" data from the database into files that are called fixtures (json,xml,yaml). 
slug - string used as URL parameter for routing. URL friendly i.e. no spaces. 

