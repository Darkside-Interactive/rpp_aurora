

function updateTooltipPosition( _,_, x, y )
	guiSetPosition( label, x + 8, y + 10, false );
	guiBringToFront( label );
end


function changeNOSGaugePosition( _, btnState, x, y )
	if btnState == "down" then
		g_tGaugePosition[ 1 ] = x - 50;
		g_tGaugePosition[ 2 ] = y - 50;
	end
end


function saveGaugePositionToFile( )
	local xml = xmlCreateFile( "gauge_pos.xml", "gauge" );
	if xml then
		local posNode = xmlCreateChild( xml, "position" );
		xmlNodeSetAttribute( posNode, "x", g_tGaugePosition[ 1 ] );
		xmlNodeSetAttribute( posNode, "y", g_tGaugePosition[ 2 ] );
		xmlSaveFile( xml );
		return
	end
	outputDebugString( "Coundn't save gauge position." );
end

function loadGaugePositionFromFile( )
	local xml = xmlLoadFile( "gauge_pos.xml" );
	if xml then
		local posNode = xmlFindChild( xml, "position", 0 );
		g_tGaugePosition[ 1 ] = xmlNodeGetAttribute( posNode, "x" );
		g_tGaugePosition[ 2 ] = xmlNodeGetAttribute( posNode, "y" );
		xmlUnloadFile( xml );
		return true;
	end
end


function letMePositionGauge( )
	if isEditingPosition then
		isEditingPosition = false;
		showCursor( false );
		guiSetVisible( label, false );
		removeEventHandler( "onClientCursorMove", g_Root, updateTooltipPosition );
		removeEventHandler( "onClientClick", g_Root, changeNOSGaugePosition );
		saveGaugePositionToFile( );
		return;
	end
	if not isEditingPosition then
		isEditingPosition = true;
		showCursor( true );
		local x, y = getCursorPosition( );
		x, y = x * g_tScreenSize[ 1 ], y * g_tScreenSize[ 2 ];
		guiSetPosition( label, x, y, false );
		guiSetVisible( label, true );
		addEventHandler( "onClientCursorMove", g_Root, updateTooltipPosition );
		addEventHandler( "onClientClick", g_Root, changeNOSGaugePosition );
	end
end
