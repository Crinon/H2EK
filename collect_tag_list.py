import os
import sys

reports_path = ""
public_tags_path = 'bin\\!public_tags.txt'

if len(sys.argv) == 3:
	reports_path = sys.argv[1]
	public_tags_path = sys.argv[2]

allset = set()
unreferenced_set = set()
reports_path = reports_path + "reports\\"

def process_directory(directory):
	tag_directory = os.path.join(sys.path[0], 'tags')
	digsite_directory = os.path.join(tag_directory, directory)
	if os.path.exists(digsite_directory):
		for path, subdirs, files in os.walk(digsite_directory):
			for name in files:
				absolute_file_path = os.path.join(path, name)
				local_path = absolute_file_path.split(tag_directory + os.sep, 1)[1]
				local_path = local_path.lower()
				if not local_path in allset:
					s = local_path.rstrip()
					unreferenced_set.add(s)


def process_file(fname):
	with open( reports_path + fname + "\\cache_file_loaded_tags.txt", "r") as file:
		for lineNumber, lineText in enumerate(file):
			if lineText.find('.sound_cache_file_gestalt') > 0:
				continue
			s = lineText.rstrip()
			#print s
			allset.add(s)

process_file('mainmenu')
process_file('shared')
process_file('single_player_shared')
process_file('00a_introduction')
process_file('01a_tutorial')
process_file('01b_spacestation')
process_file('03a_oldmombasa')
process_file('03b_newmombasa')
process_file('04a_gasgiant')
process_file('04b_floodlab')
process_file('05a_deltaapproach')
process_file('05b_deltatowers')
process_file('06a_sentinelwalls')
process_file('06b_floodzone')
process_file('07a_highcharity')
process_file('07b_forerunnership')
process_file('08a_deltacliffs')
process_file('08b_deltacontrol')


process_file('zanzibar')
process_file('ascension')
process_file('backwash')
process_file('burial_mounds')
process_file('colossus')
process_file('containment')
process_file('cyclotron')
process_file('deltatap')
process_file('dune')
process_file('elongation')
process_file('beavercreek')
process_file('coagulation')
process_file('warlock')
process_file('headlong')
process_file('lockout')
process_file('foundation')
process_file('gemini')
process_file('midship')
process_file('triplicate')
process_file('turf')
process_file('waterworks')
process_file('needle')
process_file('street_sweeper')
process_file('derelict')
process_file('highplains')

# Currently unreleased maps
process_file('anchor_point')
process_file('artery')
process_file('backwoods')
process_file('convergence')
process_file('convergence_ms')
process_file('convict')
process_file('covenant_sample')
process_file('example')
process_file('example_pi')
process_file('forerunner_sample')
process_file('grotto')
process_file('human_sample')
process_file('rodentia')
process_file('shaft')
process_file('soccer')

process_file('chironstation')

# Digsite maps
process_file('03_ascension')
process_file('03_burial_mounds')
process_file('03_colossus')
process_file('03_headlong')
process_file('03_lockout')
process_file('03_midship')
process_file('03_waterworks')

process_file('arcology')

psh_dir = 'rasterizer\\pixel_shaders_dx9'

print(sys.path[0])

for filename in os.listdir(sys.path[0] + '\\tags\\' + psh_dir):
	if filename.endswith(".psh"):
		allset.add(psh_dir + '\\' + filename)

allset.add('scenarios\\shaders\\shader_collections.shader_collections')

process_directory('digsite')		# tags\digsite

with open(public_tags_path, "w") as fout:
	print()
	for s in sorted(allset):
		if os.path.exists(sys.path[0] + '\\tags\\' + s):
			fout.write(s + '\n')

	for s in sorted(unreferenced_set):
		if os.path.exists(sys.path[0] + '\\tags\\' + s):
			fout.write(s + '\n')

print('done')
