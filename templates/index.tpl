<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Warrior Cat Name Generator</title>
    <style>
        #options {
            display: flex;
        }
        #results {
            display: flex;
            flex-direction: column;
            flex-wrap: wrap;
            height: 300px;
        }
        {#.name {#}
        {#    align-self: center;#}
        {#    padding-right: 0.5em;#}
    </style>
</head>
<body>
{#    <form>#}
{#        <input type="hidden" value="deselect">#}
{#        <button type="submit" name="deselect" id="deselect">Deselect All</button><br>#}
{#    </form>#}
    <form name="form">
        <label for="Entries">Number of Names to Generate:</label>
        <select id="Entries" name="Entries">
            {% for entry in entries %}
                {% if entry == selected_entry %}
                    {% set isselected = "selected" %}
                {%  else %}
                    {% set isselected = "" %}
                {%  endif %}
            <option value="{{ entry }}" {{ isselected }}>{{ entry }}</option>
            {%  endfor %}
        </select>
        <div id="options">
            <fieldset class="optiontype">
                <legend>Fur Color:</legend>
                {% for color, pretty in fur.items() %}
                    {% if color in selected %}
                        {% set isselected = "checked" %}
                    {%  else %}
                        {% set isselected = "" %}
                    {%  endif %}
                    <input type="checkbox" id="fur{{ color }}" name="options" value="{{ color }}" {{ isselected }}>
                    <label for="fur{{ color }}">{{ pretty }}</label><br>
                {% endfor %}
            </fieldset>
            <fieldset class="optiontype">
                <legend>Descriptors</legend>
                {% for desc, pretty in descriptors.items() %}
                    {% if desc in selected %}
                        {% set isselected = "checked" %}
                    {%  else %}
                        {% set isselected = "" %}
                    {%  endif %}
                    <input type="checkbox" id="desc{{ desc }}" name="options" value="{{ desc }}" {{ isselected }}>
                    <label for="desc{{ desc }}">{{ pretty }}</label><br>
                {% endfor %}
            </fieldset>
            <fieldset class="optiontype">
                <legend>Clans</legend>
                {% for clan, pretty in clans.items() %}
                    {% if clan in selected %}
                        {% set isselected = "checked" %}
                    {%  else %}
                        {% set isselected = "" %}
                    {%  endif %}
                    <input type="checkbox" id="clan{{ clan }}" name="options" value="{{ clan }}" {{ isselected }}>
                    <label for="clan{{ clan }}">{{ pretty }}</label><br>
                {% endfor %}
            </fieldset>
        </div>
        <label for="universal">Include universal names?</label>
            {% if "general" in selected %}
                {% set isselected = "checked" %}
            {%  else %}
                {% set isselected = "" %}
            {%  endif %}
        <input type="checkbox" id="universal" name="options" value="general" {{ isselected }}>
        <button type="submit" name="generate" id="generate">Generate!</button>
        <input type="hidden" value="deselect">
        <button type="submit" name="deselect" id="deselect">Deselect All</button><br>
    </form>

    {% if results %}
        <h1>Results:</h1>
        <div id="results">
            {% for item in results %}
                <div class="name">{{ item }}</div><br>
            {% endfor %}
        </div>
    {% endif %}

</body>
</html>