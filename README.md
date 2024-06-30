Hello I am SluggDev, I convert era-outfit to ox_inventory because I dont see an other metaclothing script better than era's one I give all credits to her!! I juste convert it to help people with ox_inventory for having a great metaclothing script


Install and ensure era-outfits in your server.cfg like any scripts.

1.**load `playerhairs.sql` in your database**

2. **Go to qb-radialmenu config.lua and copy over line 170 to line 298 :**

```lua
                    id = 'clothesmenu',
                    title = 'Clothes',
                    icon = 'shirt',
                    items = {
                        {
                            id = 'Outfit',
                            title = 'Outfit',
                            icon = 'person-half-dress',
                            items = {
                                {
                                    id = 'removeall',
                                    title = 'Remove all Clothes',
                                    icon = 'person-dress',
                                    type = 'client',
                                    event = 'eraoutfits:client:removeall',
                                    shouldClose = true
                                }, {
                                    id = 'makeoutfit',
                                    title = 'Make Outfit',
                                    icon = 'bag-shopping',
                                    type = 'client',
                                    event = 'eraoutfits:client:makeoutfit',
                                    shouldClose = true  
                                }
                            }
                        }, {
                            id = 'Ear',
                            title = 'Ear',
                            icon = 'headphones',
                            type = 'client',
                            event = 'eraoutfits:client:ears',
                            shouldClose = false
                        }, {
                            id = 'Neck',
                            title = 'Chains',
                            icon = 'user-tie',
                            type = 'client',
                            event = 'eraoutfits:client:chains',
                            shouldClose = false
                        }, {
                            id = 'Top',
                            title = 'Top',
                            icon = 'shirt',
                            type = 'client',
                            event = 'eraoutfits:client:shirt',
                            shouldClose = false
                        }, {
                            id = 'Pants',
                            title = 'Pants',
                            icon = 'user',
                            type = 'client',
                            event = 'eraoutfits:client:pant',
                            shouldClose = false
                        }, {
                            id = 'Shoes',
                            title = 'Shoes',
                            icon = 'shoe-prints',
                            type = 'client',
                            event = 'eraoutfits:client:shoes',
                            shouldClose = false
                        }, {
                            id = 'Kevlar',
                            title = 'Kevlar',
                            icon = 'vest',
                            type = 'client',
                            event = 'eraoutfits:client:kevlar',
                            shouldClose = false
                        }, {
                            id = 'Hair',  -- If you want to use Alternatives Hairscuts
                            title = 'Hairs',
                            icon = 'user',
                            items = {
                                {
                                    id = 'sethair',
                                    title = 'Manage Hairs',
                                    icon = 'scissors',
                                    type = 'client',
                                    event = 'eraoutfits:client:openHairMenu',
                                    shouldClose = true
                                }, {
                                    id = 'togglehair',
                                    title = 'Switch Hairs ',
                                    icon = 'arrows-rotate',
                                    type = 'client',
                                    event = 'eraoutfits:client:switchHair',
                                    shouldClose = false  
                                }
                            }
                        }, {
                            id = 'meer',
                            title = 'Extras',
                            icon = 'plus',
                            items = {
                                {
                                    id = 'Hat',
                                    title = 'Hat',
                                    icon = 'hat-cowboy-side',
                                    type = 'client',
                                    event = 'eraoutfits:client:hat',
                                    shouldClose = false
                                }, {
                                    id = 'Glasses',
                                    title = 'Glasses',
                                    icon = 'glasses',
                                    type = 'client',
                                    event = 'eraoutfits:client:glasses',
                                    shouldClose = false
                                }, {
                                    id = 'Visor',
                                    title = 'Visor',
                                    icon = 'hat-cowboy-side',
                                    type = 'client',
                                    event = 'qb-radialmenu:ToggleProps',
                                    shouldClose = false
                                }, {
                                    id = 'Mask',
                                    title = 'Mask',
                                    icon = 'masks-theater',
                                    type = 'client',
                                    event = 'eraoutfits:client:mask',
                                    shouldClose = false
                                }, {
                                    id = 'Bag',
                                    title = 'Bag',
                                    icon = 'bag-shopping',
                                    type = 'client',
                                    event = 'eraoutfits:client:bags',
                                    shouldClose = false
                                }, {
                                    id = 'Bracelet',
                                    title = 'Bracelet',
                                    icon = 'user',
                                    type = 'client',
                                    event = 'eraoutfits:client:bracelet',
                                    shouldClose = false
                                }, {
                                    id = 'Watch',
                                    title = 'Watch',
                                    icon = 'stopwatch',
                                    type = 'client',
                                    event = 'eraoutfits:client:watch',
                                    shouldClose = false
                                }, {
                                    id = 'Decals',
                                    title = 'Decals',
                                    icon = 'vest-patches',
                                    type = 'client',
                                    event = 'eraoutfits:client:decals',
                                    shouldClose = false
                                }
                            }
                        }
                    }
                }
            }
        },
    }
```

3. **Illenium-Appearance**

Right under of RegisterNetEvent("illenium-appearance:client:changeOutfit", function(data) (line 646), add this :
```lua
    TriggerEvent("eraoutfits:client:getoutfit")
    TriggerServerEvent("illenium-appearance:server:chargeCustomer", "clothing")
```

Every clothing shop should work (like base clothing shop of qb), just try and see. Im not supporting any of these cuz im not familiar with



4. **Inventory**
Dont forget to add all the items images in html files

add these items in ox_inventory data/item.lua :
```lua

	["era_para"] = {
		label = "Sac",
		weight = 0,
		stack = false,
		close = true,
		description = " ",
		client = {
			image = "era_para.png",
		}
	},
	["era_chains"] = {
		label = "Chaine",
		weight = 0,
		stack = false,
		close = true,
		description = " ",
		client = {
			image = "era_chains.png",
		}
	},
	["era_decal"] = {
		label = "Decal",
		weight = 0,
		stack = false,
		close = true,
		description = " ",
		client = {
			image = "era_decal.png",
		}
	},
	["era_watch"] = {
		label = "Montre",
		weight = 0,
		stack = false,
		close = true,
		description = " ",
		client = {
			image = "era_watch.png",
		}
	},
	["era_bracelet"] = {
		label = "Bracelet",
		weight = 0,
		stack = false,
		close = true,
		description = " ",
		client = {
			image = "era_bracelet.png",
		}
	},
	["era_ears"] = {
		label = "Accesoire d\"oreils",
		weight = 0,
		stack = false,
		close = true,
		description = " ",
		client = {
			image = "era_ears.png",
		}
	},
	["era_mask"] = {
		label = "Masque",
		weight = 0,
		stack = false,
		close = true,
		description = " ",
		client = {
			image = "era_mask.png",
		}
	},
	["era_top"] = {
		label = "Chandail",
		weight = 0,
		stack = false,
		close = true,
		description = " ",
		client = {
			image = "era_top.png",
		}
	},
	["era_pants"] = {
		label = "Pantalon",
		weight = 0,
		stack = false,
		close = true,
		description = " ",
		client = {
			image = "era_pants.png",
		}
	},
	["era_outfit"] = {
		label = "tenue",
		weight = 0,
		stack = false,
		close = true,
		description = " ",
		client = {
			image = "era_outfit.png",
		}
	},
	["era_hat"] = {
		label = "Chapeau",
		weight = 0,
		stack = false,
		close = true,
		description = " ",
		client = {
			image = "era_hat.png",
		}
	},
	["era_kevlar"] = {
		label = "Vest par balles",
		weight = 0,
		stack = false,
		close = true,
		description = " ",
		client = {
			image = "armor.png",
		}
	},
	["era_glasses"] = {
		label = "Lunettes",
		weight = 0,
		stack = false,
		close = true,
		description = " ",
		client = {
			image = "era_glasses.png",
		}
	},

```

# **Configuration**

translation in locales.lua, otherwise in config.lua

If you dont want Alternative Hairs for any reason, you can remove them by removing the lines in qb-radialmenu.


# Donations



[![kofi](https://user-images.githubusercontent.com/7586345/125668092-55af2a45-aa7d-4795-93ed-de0a9a2828c5.png)](https://ko-fi.com/erazaya)
