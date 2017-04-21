#!/usr/bin/env python


# from reachability_analyzer.grasp_reachability_analyzer import GraspReachabilityAnalyzer
from grasp_execution import *
print('reach')
from reachability_analyzer.grasp_reachability_analyzer import GraspReachabilityAnalyzer
from grasp_execution.grasp_execution_node import *




import imp
try:
    spam_info = imp.find_module('grasp_execution')
    spam = imp.load_module('grasp_execution', *spam_info)
    print(dir(spam))
    print(spam.__package__)
    print(spam.__name__)
    print(spam.__path__)


    imp.find_module('eggs', spam.__path__) # __path__ is already a list
    found = True
except ImportError:
    found = False



print('GRASP TEST')

print(GraspExecutionNode)
