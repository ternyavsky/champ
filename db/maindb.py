from structural import singleton 
import pyodbc

class DB(singleton.Singleton):
    def init(self, username:str="b2", password:str="123qwe123" ,db:str="b2", server:str=r"192.168.5.145", *args, **kwargs) -> None:
        super().__init__()
        self.conn = pyodbc.connect(
                "DRIVER={ODBC Driver 17 for SQL Server};"\
                f"SERVER={server};"\
                f"UID={username};"\
                f"DATABASE={db};"\
                f"UID={username};"\
                f"PWD={password};") 
        self.cursor = self.conn.cursor()

        self.cursor.execute("select * from users")
        raw = self.cursor.fetchone()
        print(raw)
    
    def __init__(self):
        pass

    def login(self, email:str, passoword:str):
        self.cursor.execute("select * from users where email=? and password=?", (email, passoword))
        print(self.cursor.fetchone())
