from structural import singleton 
import pyodbc
from .user import User

class DB(singleton.Singleton):
    def init(self, username:str="sa", password:str="Tualet-2015" ,db:str="master", server:str=r"localhost", *args, **kwargs) -> None:
        super().__init__()
        self.conn = pyodbc.connect(
                "DRIVER={ODBC Driver 18 for SQL Server};"\
                f"SERVER={server};"\
                f"UID={username};"\
                f"DATABASE={db};"\
                f"UID={username};"\
                f"TrustServerCertificate=yes;"\
                f"PWD={password};") 
        self.cursor = self.conn.cursor()

        self.cursor.execute("select * from users")
        raw = self.cursor.fetchone()
        print(raw)
    
    def __init__(self):
        pass


    def login(self, email:str, passoword:str) -> User | str:
        self.cursor.execute("select * from users where email=? and password=?", (email, passoword))
        data = self.cursor.fetchone()
        if data:
            user = User(self.cursor.fetchone())
            return user
        else:
            return "Неверный логин или пароль"
