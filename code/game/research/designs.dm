/***************************************************************
**						Design Datums						  **
**	All the data for building stuff and tracking reliability. **
***************************************************************/
/*
For the materials datum, it assumes you need reagents unless specified otherwise. To designate a material that isn't a reagent,
you use one of the material IDs below. These are NOT ids in the usual sense (they aren't defined in the object or part of a datum),
they are simply references used as part of a "has materials?" type proc. They all start with a $ to denote that they aren't reagents.
The currently supporting non-reagent materials:
- $metal (/obj/item/stack/metal). One sheet = 3750 units.
- $glass (/obj/item/stack/metal). One sheet = 3750 units.
(Insert new ones here)

Don't add new keyword/IDs if they are made from an existing one (such as rods which are made from metal). Only add raw materials.

Reliabilitity Guidelines:
- The more dangerous the malfunctions are, the higher the base reliabliity (otherwise, people will just skip that tech).
- High base reliability = High material cost; Low base reliability = Low material cost.

*/
#define	IMPRINTER	1	//For circuits.
#define PROTOLATHE	2	//For stuff with reliability issues.
#define	AUTOLATHE	4	//For general use or 100% reliability items.
//Note: More then one of these can be added to a design but it isn't suggested.

datum
	design						//Datum for object designs, used in construction
		var
			name = "Name"					//Name of the created object.
			desc = "Desc"					//Description of the created object.
			id = "id"						//ID of the created object for easy refernece. Alphanumeric, lower-case, no symbols
			list/req_tech = list()			//IDs of that techs the object originated from and the minimum level requirements.
			reliability = 100				//Reliability of the device.
			build_type = null				//Flag as to what kind machine the design is built in. See defines.
			list/materials = list()			//List of materials. Format: "id" = amount.
			build_path = ""					//The file path of the object that gets created

		seccamera
			name = "Circuit Design (Security)"
			desc = "Allows for the construction of circuit boards used to build security camera computers."
			id = "seccamera"
			req_tech = list()
			reliability = 100
			build_type = IMPRINTER
			materials = list("$metal" = 2000, "acid" = 20)
			build_path = "/obj/item/weapon/circuitboard/security"

		aicore
			name = "Circuit Design (AI Core)"
			desc = "Allows for the construction of circuit boards used to build new AI cores."
			id = "aicore"
			req_tech = list()
			reliability = 100
			build_type = IMPRINTER
			materials = list("$metal" = 2000, "acid" = 20)
			build_path = "/obj/item/weapon/circuitboard/aicore"

		aiupload
			name = "Circuit Design (AI Upload)"
			desc = "Allows for the construction of circuit boards used to build an AI Upload Console."
			id = "aiupload"
			req_tech = list()
			reliability = 100
			build_type = IMPRINTER
			materials = list("$metal" = 2000, "acid" = 20)
			build_path = "/obj/item/weapon/circuitboard/aiupload"

		med_data
			name = "Circuit Design (Medical Records)"
			desc = "Allows for the construction of circuit boards used to build a medical records console."
			id = "med_data"
			req_tech = list()
			reliability = 100
			build_type = IMPRINTER
			materials = list("$metal" = 2000, "acid" = 20)
			build_path = "/obj/item/weapon/circuitboard/med_data"

		pandemic
			name = "Circuit Design (PanD.E.M.I.C. 2200)"
			desc = "Allows for the construction of circuit boards used to build a PanD.E.M.I.C. 2200 console."
			id = "pandemic"
			req_tech = list()
			reliability = 100
			build_type = IMPRINTER
			materials = list("$metal" = 2000, "acid" = 20)
			build_path = "/obj/item/weapon/circuitboard/pandemic"

		scan_console
			name = "Circuit Design (DNA Machine)"
			desc = "Allows for the construction of circuit boards used to build a new DNA scanning console."
			id = "scan_console"
			req_tech = list()
			reliability = 100
			build_type = IMPRINTER
			materials = list("$metal" = 2000, "acid" = 20)
			build_path = "/obj/machinery/scan_consolenew"

		comconsole
			name = "Circuit Design (Communications)"
			desc = "Allows for the construction of circuit boards used to build a communications console."
			id = "comconsole"
			req_tech = list()
			reliability = 100
			build_type = IMPRINTER
			materials = list("$metal" = 2000, "acid" = 20)
			build_path = "/obj/item/weapon/circuitboard/communications"

		idcardconsole
			name = "Circuit Design (ID Computer)"
			desc = "Allows for the construction of circuit boards used to build an ID computer."
			id = "idcardconsole"
			req_tech = list()
			reliability = 100
			build_type = IMPRINTER
			materials = list("$metal" = 2000, "acid" = 20)
			build_path = "/obj/item/weapon/circuitboard/card"

		teleconsole
			name = "Circuit Design (Teleporter Console)"
			desc = "Allows for the construction of circuit boards used to build a teleporter control console."
			id = "teleconsole"
			req_tech = list()
			reliability = 100
			build_type = IMPRINTER
			materials = list("$metal" = 2000, "acid" = 20)
			build_path = "/obj/item/weapon/circuitboard/teleporter"

		secdata
			name = "Circuit Design (Security Records Console)"
			desc = "Allows for the construction of circuit boards used to build a security records console."
			id = "secdata"
			req_tech = list()
			reliability = 100
			build_type = IMPRINTER
			materials = list("$metal" = 2000, "acid" = 20)
			build_path = "/obj/item/weapon/circuitboard/secure_data"

		atmosalerts
			name = "Circuit Design (Atmosphere Alerts Console)"
			desc = "Allows for the construction of circuit boards used to build an atmosphere alert console.."
			id = "atmosalerts"
			req_tech = list()
			reliability = 100
			build_type = IMPRINTER
			materials = list("$metal" = 2000, "acid" = 20)
			build_path = "/obj/item/weapon/circuitboard/atmosphere/alerts"

		air_management
			name = "Circuit Design (Atmospheric Monitor)"
			desc = "Allows for the construction of circuit boards used to build an Atmospheric Monitor."
			id = "air_management"
			req_tech = list()
			reliability = 100
			build_type = IMPRINTER
			materials = list("$metal" = 2000, "acid" = 20)
			build_path = "/obj/item/weapon/circuitboard/general_air_control"

		general_alert
			name = "Circuit Design (General Alert Console)"
			desc = "Allows for the construction of circuit boards used to build a General Alert console."
			id = "general_alert"
			req_tech = list()
			reliability = 100
			build_type = IMPRINTER
			materials = list("$metal" = 2000, "acid" = 20)
			build_path = "/obj/item/weapon/circuitboard/general_alert"

		robocontrol
			name = "Circuit Design (Robotics Control Console)"
			desc = "Allows for the construction of circuit boards used to build a Robotics Control console."
			id = "robocontrol"
			req_tech = list()
			reliability = 100
			build_type = IMPRINTER
			materials = list("$metal" = 2000, "acid" = 20)
			build_path = "/obj/item/weapon/circuitboard/robotics"

		clonecontrol
			name = "Circuit Design (Cloning Machine Console)"
			desc = "Allows for the construction of circuit boards used to build a new Cloning Machine console."
			id = "clonecontrol"
			req_tech = list()
			reliability = 100
			build_type = IMPRINTER
			materials = list("$metal" = 2000, "acid" = 20)
			build_path = "/obj/item/weapon/circuitboard/cloning"

		arcademachine
			name = "Circuit Design (Arcade Machine)"
			desc = "Allows for the construction of circuit boards used to build a new arcade machine."
			id = "arcademachine"
			req_tech = list()
			reliability = 100
			build_type = IMPRINTER
			materials = list("$metal" = 2000, "acid" = 20)
			build_path = "/obj/item/weapon/circuitboard/arcade"

		powermonitor
			name = "Circuit Design (Power Monitor)"
			desc = "Allows for the construction of circuit boards used to build a new power monitor"
			id = "powermonitor"
			req_tech = list()
			reliability = 100
			build_type = IMPRINTER
			materials = list("$metal" = 2000, "acid" = 20)
			build_path = "/obj/machinery/power/monitor"

		prisonmanage
			name = "Circuit Design (Prisoner Management Console)"
			desc = "Allows for the construction of circuit boards used to build a prisoner management console."
			id = "prisonmanage"
			req_tech = list()
			reliability = 100
			build_type = IMPRINTER
			materials = list("$metal" = 2000, "acid" = 20)
			build_path = "/obj/item/weapon/circuitboard/prisoner"

///////////////////////////////////
//////////AI Module Disks//////////
///////////////////////////////////
		safeguard_module
			name = "Module Design (Safeguard)"
			desc = "Allows for the construction of a Safeguard AI Module."
			id = "safeguard_module"
			req_tech = list()
			reliability = 100
			build_type = IMPRINTER
			materials = list("$metal" = 2000, "acid" = 20)
			build_path = "/obj/item/weapon/aiModule/safeguard"

		onehuman_module
			name = "Module Design (OneHuman)"
			desc = "Allows for the construction of a OneHuman AI Module."
			id = "onehuman_module"
			req_tech = list()
			reliability = 100
			build_type = IMPRINTER
			materials = list("$metal" = 2000, "acid" = 20)
			build_path = "/obj/item/weapon/aiModule/oneHuman"

		protectstation_module
			name = "Module Design (ProtectStation)"
			desc = "Allows for the construction of a ProtectStation AI Module."
			id = "protectstation_module"
			req_tech = list()
			reliability = 100
			build_type = IMPRINTER
			materials = list("$metal" = 2000, "acid" = 20)
			build_path = "/obj/item/weapon/aiModule/protectStation"

		notele_module
			name = "Module Design (TeleporterOffline Module)"
			desc = "Allows for the construction of a TeleporterOffline AI Module."
			id = "notele_module"
			req_tech = list()
			reliability = 100
			build_type = IMPRINTER
			materials = list("$metal" = 2000, "acid" = 20)
			build_path = "/obj/item/weapon/aiModule/teleporterOffline"

		quarantine_module
			name = "Module Design (Quarantine)"
			desc = "Allows for the construction of a Quarantine AI Module."
			id = "quarantine_module"
			req_tech = list()
			reliability = 100
			build_type = IMPRINTER
			materials = list("$metal" = 2000, "acid" = 20)
			build_path = "/obj/item/weapon/aiModule/quarantine"

		oxygen_module
			name = "Module Design (OxygenIsToxicToHumans)"
			desc = "Allows for the construction of a Safeguard AI Module."
			id = "oxygen_module"
			req_tech = list()
			reliability = 100
			build_type = IMPRINTER
			materials = list("$metal" = 2000, "acid" = 20)
			build_path = "/obj/item/weapon/aiModule/oxygen"

		freeform_module
			name = "Module Design (Freeform)"
			desc = "Allows for the construction of a Freeform AI Module."
			id = "freeform_module"
			req_tech = list()
			reliability = 100
			build_type = IMPRINTER
			materials = list("$metal" = 2000, "acid" = 20)
			build_path = "/obj/item/weapon/aiModule/freeform"

		reset_module
			name = "Module Design (Reset)"
			desc = "Allows for the construction of a Reset AI Module."
			id = "reset_module"
			req_tech = list()
			reliability = 100
			build_type = IMPRINTER
			materials = list("$metal" = 2000, "acid" = 20)
			build_path = "/obj/item/weapon/aiModule/reset"

		purge_module
			name = "Module Design (Purge)"
			desc = "Allows for the construction of a Purge AI Module."
			id = "purge_module"
			req_tech = list()
			reliability = 100
			build_type = IMPRINTER
			materials = list("$metal" = 2000, "acid" = 20)
			build_path = "/obj/item/weapon/aiModule/purge"

		freeformcore_module
			name = "Core Module Design (Freeform)"
			desc = "Allows for the construction of a Freeform AI Core Module."
			id = "freeformcore_module"
			req_tech = list()
			reliability = 100
			build_type = IMPRINTER
			materials = list("$metal" = 2000, "acid" = 20)
			build_path = "/obj/item/weapon/aiModule/freeformcore"

		asimov
			name = "Core Module Design (Asimov)"
			desc = "Allows for the construction of a Asimov AI Core Module."
			id = "asimov_module"
			req_tech = list()
			reliability = 100
			build_type = IMPRINTER
			materials = list("$metal" = 2000, "acid" = 20)
			build_path = "/obj/item/weapon/aiModule/asimov"

		paladin_module
			name = "Core Module Design (P.A.L.A.D.I.N.)"
			desc = "Allows for the construction of a P.A.L.A.D.I.N. AI Core Module."
			id = "paladin_module"
			req_tech = list()
			reliability = 100
			build_type = IMPRINTER
			materials = list("$metal" = 2000, "acid" = 20)
			build_path = "/obj/item/weapon/aiModule/paladin"

		tyrant_module
			name = "Core Module Design (T.Y.R.A.N.T.)"
			desc = "Allows for the construction of a T.Y.R.A.N.T. AI Module."
			id = "tyrant_module"
			req_tech = list()
			reliability = 100
			build_type = IMPRINTER
			materials = list("$metal" = 2000, "acid" = 20)
			build_path = "/obj/item/weapon/aiModule/tyrant"

///////////////////////////////////
//////////Mecha Module Disks///////
///////////////////////////////////

		ripley_main
			name = "Circuit Design (APLU \"Ripley\" Central Control module)"
			desc = "Allows for the construction of a Safeguard AI Module."
			id = "ripley_main"
			req_tech = list()
			reliability = 100
			build_type = IMPRINTER
			materials = list("$metal" = 2000, "acid" = 20)
			build_path = "/obj/item/mecha_parts/circuitboard/ripley/main"

		ripley_peri
			name = "Circuit Design (APLU \"Ripley\" Peripherals Control module)"
			desc = "Allows for the construction of a Safeguard AI Module."
			id = "ripley_peri"
			req_tech = list()
			reliability = 100
			build_type = IMPRINTER
			materials = list("$metal" = 2000, "acid" = 20)
			build_path = "/obj/item/mecha_parts/circuitboard/ripley/peripherals"


////////////////////////////////////////
//Disks for transporting design datums//
////////////////////////////////////////

/obj/item/weapon/disk/design_disk
	name = "Component Design Disk"
	desc = "A disk for storing device design data for construction in lathes."
	icon = 'cloning.dmi'
	icon_state = "datadisk2"
	item_state = "card-id"
	w_class = 1.0
	var/datum/design/blueprint
	New()
		src.pixel_x = rand(-5.0, 5)
		src.pixel_y = rand(-5.0, 5)