specs
defaultSpec
	<spec>
	
	^ SpecLayout composed
		newRow: [ :row | 
			row
				newColumn: #typeList width: 180 * World displayScaleFactor;
				newColumn: #contentPanel ]