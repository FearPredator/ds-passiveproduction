# Passive Production Script

This script enables passive item production with specific access for player jobs in both ESX and QBCore frameworks. It supports features like production timers, item collection, and job-based access to production points.

## Features

- Configurable Framework Compatibility: Supports both ESX and QBCore frameworks. Easily switch between frameworks in the configuration.
- Item Production and Collection: Players can produce items based on specific jobs and collect them once production is complete.
- Localized Timer Display: Customizable timer display with configurable position, font, color, and background via config.lua.
- Job-Restricted Access: Production points can be restricted to specific jobs.

## Installation

1. Download and place the ds-passiveproduction folder in your server's resource directory.
2. Configure config.lua to set up:
   - Framework selection (ESX or QBCore)
   - Production points and item details
   - Timer styles and localization options
3. Update fxmanifest.lua to set the correct framework dependency (see below).

## Switching Between ESX and QBCore

To switch between ESX and QBCore frameworks:

1. Open config.lua and update the Framework setting to either "ESX" or "QB".
2. In fxmanifest.lua, switch the dependency by commenting or uncommenting the corresponding line, as shown below:

```lua
dependencies {
    'es_extended'
    --'qb-core'
}
```

For ESX, ensure es_extended is uncommented, and qb-core is commented.  
For QBCore, comment out es_extended and uncomment qb-core.  
This step is essential to avoid framework conflicts and ensure that the correct dependencies are loaded.

## Configuration

In config.lua, you can adjust the following options:

- Framework Selection: Choose between "ESX" and "QB" frameworks.
- Timer Style: Modify Config.TimerStyle to set the font, color, and background of the production timer.
- Job Restrictions: Specify jobs allowed to access each production point.
- Locales: Customize messages and text for your server’s language needs.

## Usage

Players can access production points based on their jobs and start item production.  
Once production completes, they can collect the item if they are within range.  
Production timers are displayed with the customized style and are updated in real-time.

## Requirements

- ESX or QBCore framework  
- Ensure correct dependencies are set in fxmanifest.lua based on the framework in use.
