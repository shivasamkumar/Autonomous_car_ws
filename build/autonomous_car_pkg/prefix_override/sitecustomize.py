import sys
if sys.prefix == '/usr':
    sys.real_prefix = sys.prefix
    sys.prefix = sys.exec_prefix = '/home/shiva/Documents/autonomous_car_ws/install/autonomous_car_pkg'
