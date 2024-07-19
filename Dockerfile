FROM python
COPY app.py .
RUN pip install flask
CMD ["python", "app.py"]
