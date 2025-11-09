#use python flask lightweight image

FROM python-3.9:slim

#set WORKDIR
WORKDIR /app

#copy requirements.txt file and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

#copy rest of the application 
COPY . . /app/

#EXPOSE THE APP ON THE FLASK APP PORT
EXPOSE 5000

#EXECUTE THE APPLICATION
CMD ["python3", "app.py"]


