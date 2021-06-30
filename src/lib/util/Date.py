class Date:
    def __init__(self, day:int, month:int, year:int) -> None:
        self._day = day
        self._month = month
        self._year = year
    
    def getDay(self) -> int:
        return self._day
    
    def getMonth(self) -> int:
        return self._month
    
    def getYear(self) -> int:
        return self._year
    
    def __str__(self) -> str:
        return f"{self._day}/{self._month}/{self._year}"
    
    def __repr__(self) -> str:
        return str(self)