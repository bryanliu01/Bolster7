
function AddItem(_item) {
	if (array_length(oItemManager.inv) < oItemManager.maxItems) {
		array_push(oItemManager.inv, _item);
	}
	else show_debug_message("Trying to add an item but your pockets are full!");
}

function RemoveItem(_item) {
	var itemPos = FindItem(_item);
	if (itemPos != -1) array_delete(oItemManager.inv, itemPos, 1);
	else show_debug_message("Item not found!");
}

function ReplaceItem(_oldItem, _newItem) {
	var itemPos = FindItem(_oldItem);
	if (itemPos != -1) array_set(oItemManager.inv, itemPos, _newItem);
	else show_debug_message("Item not found!");
	
}

function FindItem(_item) {
	var itemPos = -1;
	for (var i = 0; i < array_length(oItemManager.inv); i++) {
		if (_item == array_get(oItemManager.inv, i)) {
			var itemPos = i;
			break;
		}
	}
	return itemPos;
}



function StoreAllItems() {
	global.itemList = {

		sneckPaper : new CreateItem (
			"Damp Paper",
			"A damp piece of paper. A location of some sort is scribbled on it.",
			[
			[CutsceneCreateTextBox, "use sneckPaper"]
			],
			[
			[CutsceneCreateTextBox, "discard sneckPaper"]
			]
		),
		
		sneckPaperUsed : new CreateItem (
			"Dry Paper",
			"A dry piece of paper. A location of some sort is scribbled on it.",
			[
			[CutsceneCreateTextBox, "use drySneckPaper"]
			],
			[
			[CutsceneCreateTextBox, "discard sneckPaper"]
			]
		),
	
		cardKey : new CreateItem (
			"Card Key",
			"It's a card in the shape of a key. Used to access the elevator.",
			noone,
			noone
		)
	}	
}