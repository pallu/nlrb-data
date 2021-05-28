import datetime
import os
import time

from nlrb import NLRB


DATE_START = datetime.datetime.strptime(os.environ['NLRB_START_DATE'],
                                        '%Y-%m-%d')

s = NLRB()

tallies_csv = s.tallies(date_start=DATE_START)

time.sleep(2)
print(tallies_csv)
