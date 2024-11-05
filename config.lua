-- DS Passive production V1.1.0

Config = {}

Config.Framework = "ESX" -- "ESX" o "QB"

-- Configura le posizioni di produzione e gli oggetti come in precedenza
Config.Locations = {
    -- Le posizioni e gli oggetti da produrre
    {
        location = vector3(325.5365, -1358.482, 32.23978),
        items = {
            { itemName = "water", productionTime = 5, quantity = 2 },
            { itemName = "phone", productionTime = 180, quantity = 1 }
        },
        requiredJob = ("police"),     -- Il lavoro richiesto per interagire con questa posizione ("mechanic"), nil per accesso libero [più lavori: {"police", "mechanic"},]
        showBlip = true,              -- True per mostrare il blip sulla mappa, false per nasconderlo
        blipSettings = {
            sprite = 77,              -- Sprite del blip
            color = 2,                -- Colore del blip
            scale = 0.8,              -- Scala del blip
            text = "Produzione"       -- Testo del blip
        }
    },
    {
        location = vector3(335.6462, -1346.87, 32.71238),
        items = {
            { itemName = "bread", productionTime = 20, quantity = 5 }
        },
        requiredJob = nil,            -- Accesso libero
        showBlip = false              -- Non mostrare il blip per questa posizione
    },
    {
        location = vector3(338.4655, -1345.759, 32.71403),
        items = {
            { itemName = "bread", productionTime = 10, quantity = 1 }
        },
        requiredJob = nil,            -- Accesso libero
        showBlip = true,              -- True per mostrare il blip sulla mappa, false per nasconderlo
        blipSettings = {
            sprite = 544,              -- Sprite del blip
            color = 2,                -- Colore del blip
            scale = 0.8,              -- Scala del blip
            text = "Produzione"       -- Testo del blip
        }
    },
}

Config.Align = 'center'                 -- Allineamento del menù

-- Configurazione del marker
Config.Marker = {
    type = 27,                         -- Tipo di marker (es. 1 per il cerchio)
    scale = vector3(1.0, 1.0, 1.0),    -- Dimensioni del marker
    color = { r = 0, g = 150, b = 150, a = 100 } -- Colore del marker
}

Config.DrawDistance = 10.0  -- Definisci la distanza di rendering desiderata

-- Configurazioni grafiche per il timer
Config.DisplayRemainingTime = true  -- True per mostrare il timer del tempo rimanente, false per nasconderlo
Config.TimerPositionX = 10          -- Distanza da sinistra in px
Config.TimerPositionY = 300         -- Distanza dall'alto in px
Config.TimerStyle = {               -- Stile del testo del timer
    font = "Calibri",                 -- Font del testo
    fontSize = "15px",              -- Dimensione del font
    color = "white",                -- Colore del testo
    backgroundColor = "rgba(0, 0, 0, 0.7)" -- Sfondo del timer
}

-- Configurazione dei nomi degli oggetti per la visualizzazione
Config.ItemNames = {
    ["coffee"] = "Caffè",
    ["burger"] = "Burger",
    ["phone"] = "Cellulare",
    ["lockpick"] = "Grimaldello",
    -- Aggiungi altre mappature necessarie
}

-- Configura la sorgente delle immagini per l’interfaccia item (default o ox_inventory)
Config.ItemImageSource = "default"  -- Opzioni: "default" o "oxinventory" [NOT WORKING - NEXT VERSION]

-- Locali per le traduzioni
Config.Locales = {
    ["remaining_time"] = "Time remaining for %s: %s",
    ["ready"] = "READY",
    ["collect_notification"] = "You %d %s",
    ["collect_notification2"] = "You have collected",
    ["production_in_progress"] = "Production already underway for this marker.",
    ["start_production"] = "Press ~INPUT_CONTEXT~ to start production",
    ["collect_items"] = "Press ~INPUT_CONTEXT~ to collect the produced items.",
    ["select_item_title"] = "Choose what to produce",
    ["production_completed"] = "Production completed! Go to the marker to collect.",
    ["time"] = " - Time: ",
    ["minutes"] = "minutes",
    ["seconds"] = "seconds"
}

