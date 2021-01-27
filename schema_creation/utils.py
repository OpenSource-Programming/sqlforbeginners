#!/usr/bin/env python3

"""Random String generator to help with account data insertion"""

import os
import random
import string

def random_string_generator(size=6, chars=string.ascii_lowercase + string.digits):
    return ''.join(random.choice(chars) for _ in range(size))

