rule ExampleRule : Tag1 Tag2 {
	
	meta:
		author = "foo"
		description = "bar"
		sha256 = "baz"
		
	strings:
		// this is a comment
		/*
		this is also a comment
		*/
		$text = "this is a text" fullword ascii wide base64 xor
		$regex = /this is a regex/ nocase
		$hex = { CAFEBABE CA FE BABE [1-100] CA ?? FE ?? (BA | BE) }
		
	condition:
		any of ($t*, $r*, $hex) or
		$hex or $text or
		none of them or
		#text > 100 or not
		@hex < 0x100 and
		uint32(uint32(0x3c) == 0x00004550 and
		all of ($r*) in (filesize-500..filesize)
}