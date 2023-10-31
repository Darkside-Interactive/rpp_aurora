
g_Me = getLocalPlayer( );
g_Root = getRootElement( );
g_ResRoot = getResourceRootElement( );

g_tScreenSize = { guiGetScreenSize( ) };

local nos = 0;

local isEditingPosition = false;

g_bShowGauge = false;

g_tGaugePosition = { g_tScreenSize[1] * 0.02, g_tScreenSize[2] * 0.6 };

addEventHandler( "onClientResourceStart", g_ResRoot,
	function( )
		label = guiCreateLabel( 0, 0, 200, 40, "Click anywhere on the screen to\nchange gauge position", false );
		guiSetFont( label, "default-bold-small" );
		guiSetVisible( label, false );

		loadGaugePositionFromFile( );

		bindKey( "vehicle_fire", "both", toggleNOS );
		bindKey( "vehicle_secondary_fire", "both", toggleNOS );
		bindKey( "#", "up", letMePositionGauge );
	end
)


addEventHandler( "onClientElementDataChange", g_Root,
	function( key )
		if getElementType( source ) == "vehicle" and key == "NOS" then
			local veh = getPedOccupiedVehicle( g_Me );
			if veh == source then
				nos = getElementData( source, key );
			end
		end
	end
)


function toggleNOS( key, state )
	local veh = getPedOccupiedVehicle( g_Me );
	if veh and not isEditingPosition then
		if state == "up" then
			removeVehicleUpgrade( veh, 1010 );
			setPedControlState( "vehicle_fire", false );
			setElementData( veh, "NOS", nos );
		else
			clicktick = getTickCount( );
			vehnos = getElementData( veh, "NOS" );
			if vehnos then nos = vehnos end
			if nos > 0 then
				addVehicleUpgrade( veh, 1010 );
				setPedControlState( "vehicle_fire", true );
				setElementData( veh, "NOS", nos );
			end
		end
	end
end


addEvent( "onClientScreenFadedIn", true )
addEventHandler( "onClientScreenFadedIn", g_Root,
	function ( )
		g_bShowGauge = true;
		nos = 0;
	end
)

addEvent( "onClientScreenFadedOut", true )
addEventHandler( "onClientScreenFadedOut", g_Root,
	function ( )
		g_bShowGauge = false;
	end
)


local previous_hourcheck = -1;
local previous_color = 0;
addEventHandler( "onClientRender", g_Root,
	function( )
		if g_bShowGauge then
			local veh = getPedOccupiedVehicle( g_Me );
			if veh then
				local am_i_driver = getVehicleOccupant( veh, 0 );
				if am_i_driver then
					local color;
					local hour, minute = getTime( );
					if previous_hourcheck ~= hour then
						color = ( (hour > 19 )or ( hour >= 0 and hour < 6 ) ) and tocolor( 0, 255, 0 ) or tocolor( 255, 255, 255 );
						previous_color = color;
					else
						color = previous_color;
					end
					local nosangle = (nos / 100) * 225 + 45;
					dxDrawImage( g_tGaugePosition[ 1 ],      g_tGaugePosition[ 2 ], 100, 100, "gauge/nos_gauge.png", 0, 0, 0, color );
					dxDrawImage( g_tGaugePosition[ 1 ] + 45, g_tGaugePosition[ 2 ] + 41, 10, 40, "gauge/nos_arrow.png", nosangle, 0, -11, tocolor( 255, 0, 0 ) );

					local nitro = getVehicleUpgradeOnSlot( veh, 8 );
					if ( getPedControlState( "vehicle_fire" ) and type( nitro ) == "number" and nitro ~= 0 ) then
						if nos > 0 then
							nos = nos - .2;
							if getTickCount() - clicktick > 20000 then
								local nitroID = getVehicleUpgradeOnSlot( veh, 8 );
								if nitroID then
									removeVehicleUpgrade( veh, nitroID );
									addVehicleUpgrade( veh, nitroID );
									setPedControlState( "vehicle_fire", false );
									setPedControlState( "vehicle_fire", true );
									clicktick = getTickCount();
								end
							end
						else
							removeVehicleUpgrade( veh, 1010 );
							setPedControlState( "vehicle_fire", false );
							setElementData( veh, "NOS", 0 );
						end
					end
				end
			end
		end
	end
)


addEvent( "refillNOS", true )
addEventHandler( "refillNOS", g_Root,
	function( newvalue )
		nos = newvalue;
	end
)



