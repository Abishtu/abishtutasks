from Date import Date
from Time import Time

class Task:
    def __init__(self, taskName:str, startDate:Date, \
                 endDate:Date, startTime:Time, endTime:Time) -> None:
        self._taskName = taskName
        self._startDate = startDate
        self._endDate = endDate
        self._description = ""
        self._startTime = startTime
        self._endTime = endTime
    
    def getTaskName(self) -> str:
        return self._taskName
    
    def getStartDate(self) -> Date:
        return self._startDate
    
    def getEndDate(self) -> Date:
        return self._endDate

    def getDescription(self) -> str:
        return self._description
    
    def getStartTime(self) -> Time:
        return self._startTime
    
    def getEndTime(self) -> Time:
        return self._endTime
    
    def setTaskName(self, taskName:str) -> None:
        self._taskName = taskName
    
    def setStartDate(self, startDate:Date) -> None:
        self._startDate = startDate
    
    def setEndDate(self, endDate:Date) -> None:
        self._endDate = endDate
    
    def startTime(self, startTime:Time) -> None:
        self._startTime = startTime
    
    def endTime(self, endTime:Time) -> None:
        self._endTime = endTime
    
    def setDescription(self, description:str) -> None:
        self._description = description
    
    def __str__(self) -> str:
        return f"==[{self._taskName}]==\nStart: {str(self._startDate)} @ {str(self._startTime)}\nEnd: {str(self._endDate)} @ {str(self._endTime)}"
    
    def __repr__(self) -> str:
        return str(self)
