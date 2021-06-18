from app import app

# Display Index Page
@app.route('/')
def index():
    # print(request.args)
    if request.args and "deselect" not in request.args.keys():
        selected_entry = int(request.args["Entries"])
        options = request.args.getlist('options')
        results = generator(selected_entry, options)
        print(results)
    else:
        selected_entry = 10
        options = []
        results = []
        redirect(request.path)

    print(request.args.keys())
    selected = []
    for args in options:
        selected.append(args)


    return render_template('index.tpl', results = results, fur = fur, clans = clans, descriptors = descriptors,
                           selected = selected, entries = entries_list, selected_entry = selected_entry)

app.run(host='0.0.0.0', port= 8090)

# V1.0 TO DO LIST:
# - Finish assigning descriptors & clans
# - Add percentage to General names
# - Hook up to Dreamhost
# - Get rid of names that have three letters in a row
# - Add other CSS to make it pretty UwU

# V2.0 IDEAS
# - Full cat generator: describes marked physical features, 2 personality traits.
# - allow folks to choose what gets generated
# - all folks to select things in the generated descriptor to get regenerated
# - advanced mode to let folks tweak percentages etc. Use a cheat code to open it??? >8D

# V3.0 IDEAS
# - Generate a whole clan! Include 1 -star, at least 1 medicine cat, assign paws to mentors, etc.
# - Compile little default images of each generated cat. 