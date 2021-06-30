class Time:
    def __init__(self, hours:int, minutes:int) -> None:
        self._hours = hours
        self._minutes = minutes
    
    def getHours(self) -> int:
        return self._hours

    def getMinutes(self) -> int:
        return self._minutes

    def setHours(self, hours:int) -> None:
        self._hours = hours
    
    def setMinutes(self, minutes:int) -> None:
        self._minutes = minutes

    def __str__(self) -> str:
        return f"{self._hours}:{self._minutes}"
    
    def __repr__(self) -> str:
        return str(self)
