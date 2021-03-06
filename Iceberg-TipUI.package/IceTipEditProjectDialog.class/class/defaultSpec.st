specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :col | 
			col
				newRow: [ :row | 
					row
						newColumn: #nameLabel width: self iceLabelWidth;
						newColumn: #nameInput ]
					height: self inputTextHeight;
				newRow: [ :row | 
					row
						newColumn: [ :column |
							column
								add: #sourceDirectoryLabel height: self inputTextHeight;
								newRow: [ :emptyRow | "Fill space"  ] ] width: self iceLabelWidth;
						newColumn: #sourceDirectoryTree ]
					height: 200 * World displayScaleFactor;
				newRow: [ :row | 
					row
						newColumn: #formatLabel width: self iceLabelWidth;
						newColumn: #formatList ]
					height: self inputTextHeight;
				newRow: [ :row | 
					row newColumn: [ :emptyCol ] width: self iceLabelWidth - 40.
					row add: #messagePanel ];	
				newRow: [ :emptyRow | "Fill space" ] height: 1 ]