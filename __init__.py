from flask import Flask, render_template, request, redirect

from data import fur, clans, descriptors, entries_list
from generator import generator

app = Flask(__name__)

from app import routes