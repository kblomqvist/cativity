# coding: utf-8

import subprocess
import argparse
import os.path
import os
import sys

###############################################################################

parser = argparse.ArgumentParser(prog="segger")
subparsers = parser.add_subparsers()

erase = subparsers.add_parser("erase", help="erase the flash")
erase.set_defaults(command="erase")

flash = subparsers.add_parser("flash", help="program the flash")
flash.set_defaults(command="flash")
flash.add_argument("program", help="binary file containing the program")
flash.add_argument("addr", help="region start address in hex")

###############################################################################

jlinkexe = "JLinkExe -if SWD -device nrf51822 -speed 1000 {script}"

def exec_jlinkexe(script, path=os.environ["BUILD_PATH"]):
	try:
		print subprocess.check_output(jlinkexe.format(
						script=os.path.join(path, script)
						), shell=True)
	except subprocess.CalledProcessError, e:
		print e.output
	return 0

def read_script_file(script):
	return open(os.path.join("scripts", script), 'r').read()

def create_tmp_script(name, content):
	with open(os.path.join(os.environ["BUILD_PATH"], name), 'w') as f:
		f.write(content)

###############################################################################

def erase():
	return exec_jlinkexe("erase.jlink", "scripts")

def flash(program, addr):
	script_name = "flash.jlink"
	content = read_script_file(script_name).format(program=program, addr=addr)
	create_tmp_script(script_name, content)
	return exec_jlinkexe(script_name)

###############################################################################

args = parser.parse_args().__dict__
command = args.pop("command")

status = globals()[command](**args)
sys.exit(status)
