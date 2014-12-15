function sideMenu(content, openbtn, closebtn) {
	
	var bodyEl = document.body,
	content = content,
	openbtn = openbtn,
	closebtn = closebtn,
	isOpen = false;

function init() {
	initEvents();
}

function initEvents() {
	openbtn.addEventListener( 'click', toggleMenu );
	if( closebtn ) {
		closebtn.addEventListener( 'click', toggleMenu );
	}

	// close the menu element if the target it´s not the menu element or one of its descendants..
	content.addEventListener( 'click', function(ev) {
		var target = ev.target;
		if( isOpen && target !== openbtn ) {
			toggleMenu();
		}
	} );
}

function toggleMenu() {
	if( isOpen ) {
		classie.remove( bodyEl, 'show-menu' );
	}
	else {
		classie.add( bodyEl, 'show-menu' );
	}
	isOpen = !isOpen;
}

init();
}
