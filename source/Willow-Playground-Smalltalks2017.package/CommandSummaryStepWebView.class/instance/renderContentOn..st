rendering
renderContentOn: aCanvas

	| anchors list |

	anchors := self availableCommands collect: [ :method | self anchorToBrowse: method ].

	list := UnorderedListWebView
		applying: [ :theList |  ]
		listing: anchors
		applyingToEach: [ :theItem |  ].

	aCanvas render: list