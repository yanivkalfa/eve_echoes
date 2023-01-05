EveHelper.config.const = {
    lastClickLocation = nil,
    imageSearchWait = 5,
    defaultWait = 1,
    role = {
        damagers = {
            Lasers = {
                role = 'dps',
                optimalRange = '30',
                type = 'lasers'
            },
            misc = {
                role = 'dps',
                optimalRange = '50',
                type = 'misc'
            },
        },
        healers = {
            armor = {
                role = 'healer',
                optimalRange = '50',
                type = 'armor'
            },
            shield = {
                role = 'healer',
                optimalRange = '50',
                type = 'shield'
            },
        },
        tanks = {
            armor = {
                role = 'tank',
                optimalRange = '30',
                type = 'armor'
            },
            shield = {
                role = 'tank',
                optimalRange = '6',
                type = 'shield'
            },
        },
        tacklers = {
            interceptors = {
                role = 'tackler',
                optimalRange = '22',
                type = 'interceptors'
            },
            interdictor = {
                role = 'tackler',
                optimalRange = '20',
                type = 'interdictor'
            },
        }
    },
    moduleTypes = {
        'pick',
        'Guns', 'Drones','RRepair',
        'Group', 'Fleet',
        'Hardner', 'LPlate', 'LRepair', 'Dps', 'Prop', 'DCU',
        'Siege'
    },
    fleetPositionItems = {'Pick Position', 'Fleet Commander', 'Member'},
    fleetRoleItems = {'Pick Role', 'Tanker', 'Damage Dealer', 'Remote Repairer', 'Tackler'},
    fleetTypeItems = {'Pick Type', 'Shield', 'Armor'},
    ActionBarActiveColors = {
        R={ min = 210, max = 255},
        G={ min = 210, max = 255},
        B={ min = 210, max = 255},
    },
    ActionBarTabColors = {
        R={ min = 150, max = 255},
        G={ min = 150, max = 255},
        B={ min = 150, max = 255},
    },
    shipStatusColors = {
        targets = {
            R={ min = 150, max = 200},
            G={ min = 150, max = 200},
            B={ min = 150, max = 200},
        },
        currentShip = {
            R={ min = 110, max = 200},
            G={ min = 110, max = 200},
            B={ min = 110, max = 200}
        }
    },
    regions = {
        withImages = {
            -- starting/restarting checks
            eveRunButton = {reg = Region(608,154,63,58), imgName = 'eveRunButton.png'},
            eveCloseButton = {reg = Region(919, 640, 29, 26), imgName = 'eveCloseButton.png', imgNameAlt = 'eveCloseButtonGrey.png', },
            accountSelectButton = {reg = Region(1191,45,39,38), imgName = 'accountSelectButton.png'},
            deleteCharacter = {reg = Region(450,263,19,23), imgName = 'deleteCharacter.png'},
            confirmDisconnect = {reg = Region(550,588,170,64), imgName = 'confirmDisconnect.png'},


            overviewClosed = {reg = Region(1205,377,52,52), imgName = 'overview.png'},
            overviewOpened = {reg = Region(954,377,52,52), imgName = 'overview.png'},

            undock = {reg = Region(1076,219,79,41), imgName = 'undock.png'},
            stop = {reg = Region(499, 576, 34, 25), imgName = 'stop.png'},
            tabSwitch = {reg = Region(1218, 479, 36, 21), imgName = 'tabSwitch.png'},

            fleet = {reg = Region(17, 245, 23, 21), imgName = 'fleet.png'},

            fleetInCommends = {reg = Region(14, 321, 26, 27), imgName = 'fleetInCommends.png'},
            fleetOutCommends = {reg = Region(15, 417, 26, 27), imgName = 'fleetOutCommends.png'},

            outCommendsRepair = {reg = Region(240, 339, 16, 19), imgName = 'outCommendsRepair.png'},
            outCommendsCareTaker = {reg = Region(58, 534, 45, 15), imgName = 'outCommendsCareTaker.png'},

            hasPendingCommend = {reg = Region(262, 234, 26, 52), imgName = 'hasPendingCommend.png'},
            respondWindow = {reg = Region(821, 250, 49, 49), imgName = 'respondWindow.png'},

            respondFollowMe = {reg = Region(235, 247, 29, 26), imgName = 'respondFollowMe.png'},
            respondRepairs = {reg = Region(235, 247, 29, 26), imgName = 'respondRepairs.png'},
            respondLocatedHere = {reg = Region(235, 247, 29, 26), imgName = 'respondLocatedHere.png'},
        },
        noImages = {
            debug = Region(0,325, 550,500),
            -- starting/restarting checks
            startClick = Region(550, 526, 170, 61),
            selectCharacter = Region(250, 115, 187, 188),

            actionButtons = {
                tabSwitch = Region(1211, 464, 50, 50),
                tab1ColorScan = Region(1226, 524, 3, 3),
                tab2ColorScan = Region(1245, 524, 3, 3),
                maxZoom = Region(609, 601, 54, 47),
                but1 = {reg = Region(1204, 560, 53, 53), activeCheck = Region(1231, 556, 2, 2)},
                but2 = {reg = Region(1132, 560, 53, 53), activeCheck = Region(1158, 556, 2, 2)},
                but3 = {reg = Region(1060, 560, 53, 53), activeCheck = Region(1086, 556, 2, 2)},
                but4 = {reg = Region(987, 560, 53, 53), activeCheck = Region(1013, 556, 2, 2)},
                but5 = {reg = Region(914, 560, 53, 53), activeCheck = Region(940, 556, 2, 2)},
                but6 = {reg = Region(840, 560, 53, 53), activeCheck = Region(868, 556, 2, 2)},
                but7 = {reg = Region(1204, 634, 53, 53), activeCheck = Region(1231, 632, 2, 2)},
                but8 = {reg = Region(1132, 634, 53, 53), activeCheck = Region(1158, 632, 2, 2)},
                but9 = {reg = Region(1060, 634, 53, 53), activeCheck = Region(1086, 632, 2, 2)},
                but10 = {reg = Region(987, 634, 53, 53), activeCheck = Region(1013, 632, 2, 2)},
                but11 = {reg = Region(914, 634, 53, 53), activeCheck = Region(940, 632, 2, 2)},
                but12 = {reg = Region(840, 634, 53, 53), activeCheck = Region(868, 632, 2, 2)},
            },
            fleetButtons = {
                fleet = Region(3, 235, 50, 50),
                fleetInCommends = Region(5, 290, 45, 90),
                fleetOutCommends = Region(7, 388, 42, 89),

                outCommendsRepair = Region(58, 332, 212, 33),
                outCommendsCareTaker = Region(58, 535, 205, 31),

                hasPendingCommend = Region(74, 243, 196, 36),
                respondToCommend = Region(423, 386, 435, 69),
            },
            menus = {
                targets = {
                    {
                        reg = Region(1023, 108, 63, 61),
                        imgName = 'targetMenuLock.png',
                        orImgName = 'targetMenuUnlock.png'
                    },
                    {
                        reg = Region(937, 108, 63, 61),
                        imgName = 'targetMenuLock.png',
                        orImgName = 'targetMenuUnlock.png'
                    },
                    {
                        reg = Region(850, 108, 63, 61),
                        imgName = 'targetMenuLock.png',
                        orImgName = 'targetMenuUnlock.png'
                    },
                    {
                        reg = Region(764, 108, 63, 61),
                        imgName = 'targetMenuLock.png',
                        orImgName = 'targetMenuUnlock.png'
                    },
                    {
                        reg = Region(679, 108, 63, 61),
                        imgName = 'targetMenuLock.png',
                        orImgName = 'targetMenuUnlock.png'
                    },
                    {
                        reg = Region(590, 108, 63, 61),
                        imgName = 'targetMenuLock.png',
                        orImgName = 'targetMenuUnlock.png'
                    }
                }

            },
            shipStatus = {
                targets = {
                    {
                        activeCheck = {
                            Region(1194, 66, 3,3),
                            Region(1190, 60, 3,3),
                            Region(1188, 54, 3,3)
                        },
                        shield = {
                            {reg = Region(1238, 74, 3,3), percentage = 100},
                            {reg = Region(1245, 61, 3,3), percentage = 90},
                            {reg = Region(1247, 44, 3,3), percentage = 80},
                            {reg = Region(1240, 29, 3,3), percentage = 70},
                            {reg = Region(1227, 18, 3,3), percentage = 60},
                            {reg = Region(1211, 15, 3,3), percentage = 50},
                            {reg = Region(1195, 19, 3,3), percentage = 40},
                            {reg = Region(1183, 29, 3,3), percentage = 30},
                            {reg = Region(1176, 45, 3,3), percentage = 20},
                            {reg = Region(1178, 62, 3,3), percentage = 10},
                            {reg = Region(1185, 74, 3,3), percentage = 0},
                        },
                        armor = {
                            {reg = Region(1233, 70, 3,3), percentage = 100},
                            {reg = Region(1240, 58, 3,3), percentage = 90},
                            {reg = Region(1241, 45, 3,3), percentage = 80},
                            {reg = Region(1235, 32, 3,3), percentage = 70},
                            {reg = Region(1225, 23, 3,3), percentage = 60},
                            {reg = Region(1211, 20, 3,3), percentage = 50},
                            {reg = Region(1198, 23, 3,3), percentage = 40},
                            {reg = Region(1187, 32, 3,3), percentage = 30},
                            {reg = Region(1182, 45, 3,3), percentage = 20},
                            {reg = Region(1183, 60, 3,3), percentage = 10},
                            {reg = Region(1189, 70, 3,3), percentage = 0},
                        }
                    },
                    {
                        activeCheck = {
                            Region(1107, 66, 3,3),
                            Region(1103, 60, 3,3),
                            Region(1101, 54, 3,3)
                        },
                        shield = {
                            {reg = Region(1151, 74, 3,3), percentage = 100},
                            {reg = Region(1159, 60, 3,3), percentage = 90},
                            {reg = Region(1160, 44, 3,3), percentage = 80},
                            {reg = Region(1154, 29, 3,3), percentage = 70},
                            {reg = Region(1141, 18, 3,3), percentage = 60},
                            {reg = Region(1125, 15, 3,3), percentage = 50},
                            {reg = Region(1108, 19, 3,3), percentage = 40},
                            {reg = Region(1096, 29, 3,3), percentage = 30},
                            {reg = Region(1090, 45, 3,3), percentage = 20},
                            {reg = Region(1091, 61, 3,3), percentage = 10},
                            {reg = Region(1098, 75, 3,3), percentage = 0},
                        },
                        armor = {
                            {reg = Region(1147, 70, 3,3), percentage = 100},
                            {reg = Region(1153, 58, 3,3), percentage = 90},
                            {reg = Region(1154, 45, 3,3), percentage = 80},
                            {reg = Region(1149, 32, 3,3), percentage = 70},
                            {reg = Region(1138, 23, 3,3), percentage = 60},
                            {reg = Region(1125, 20, 3,3), percentage = 50},
                            {reg = Region(1111, 24, 3,3), percentage = 40},
                            {reg = Region(1100, 33, 3,3), percentage = 30},
                            {reg = Region(1095, 46, 3,3), percentage = 20},
                            {reg = Region(1097, 59, 3,3), percentage = 10},
                            {reg = Region(1103, 70, 3,3), percentage = 0},
                        }
                    },
                    {
                        activeCheck = {
                            Region(1021, 66, 3,3),
                            Region(1017, 60, 3,3),
                            Region(1015, 54, 3,3)
                        },
                        shield = {
                            {reg = Region(1064, 74, 3,3), percentage = 100},
                            {reg = Region(1072, 61, 3,3), percentage = 90},
                            {reg = Region(1073, 44, 3,3), percentage = 80},
                            {reg = Region(1067, 29, 3,3), percentage = 70},
                            {reg = Region(1054, 18, 3,3), percentage = 60},
                            {reg = Region(1039, 15, 3,3), percentage = 50},
                            {reg = Region(1022, 19, 3,3), percentage = 40},
                            {reg = Region(1009, 29, 3,3), percentage = 30},
                            {reg = Region(1003, 45, 3,3), percentage = 20},
                            {reg = Region(1005, 62, 3,3), percentage = 10},
                            {reg = Region(1012, 74, 3,3), percentage = 0},
                        },
                        armor = {
                            {reg = Region(1060, 70, 3,3), percentage = 100},
                            {reg = Region(1067, 59, 3,3), percentage = 90},
                            {reg = Region(1068, 45, 3,3), percentage = 80},
                            {reg = Region(1062, 32, 3,3), percentage = 70},
                            {reg = Region(1052, 24, 3,3), percentage = 60},
                            {reg = Region(1039, 20, 3,3), percentage = 50},
                            {reg = Region(1025, 23, 3,3), percentage = 40},
                            {reg = Region(1014, 33, 3,3), percentage = 30},
                            {reg = Region(1009, 46, 3,3), percentage = 20},
                            {reg = Region(1010, 60, 3,3), percentage = 10},
                            {reg = Region(1016, 70, 3,3), percentage = 0},
                        }
                    },
                    {
                        activeCheck = {
                            Region(934, 66, 3,3),
                            Region(930, 60, 3,3),
                            Region(928, 54, 3,3)
                        },
                        shield = {
                            {reg = Region(978, 74, 3,3), percentage = 100},
                            {reg = Region(986, 61, 3,3), percentage = 90},
                            {reg = Region(987, 44, 3,3), percentage = 80},
                            {reg = Region(981, 29, 3,3), percentage = 70},
                            {reg = Region(967, 18, 3,3), percentage = 60},
                            {reg = Region(952, 15, 3,3), percentage = 50},
                            {reg = Region(935, 19, 3,3), percentage = 40},
                            {reg = Region(923, 29, 3,3), percentage = 30},
                            {reg = Region(917, 45, 3,3), percentage = 20},
                            {reg = Region(918, 61, 3,3), percentage = 10},
                            {reg = Region(926, 74, 3,3), percentage = 0},
                        },
                        armor = {
                            {reg = Region(974, 70, 3,3), percentage = 100},
                            {reg = Region(980, 59, 3,3), percentage = 90},
                            {reg = Region(981, 45, 3,3), percentage = 80},
                            {reg = Region(976, 32, 3,3), percentage = 70},
                            {reg = Region(965, 23, 3,3), percentage = 60},
                            {reg = Region(952, 20, 3,3), percentage = 50},
                            {reg = Region(938, 23, 3,3), percentage = 40},
                            {reg = Region(927, 33, 3,3), percentage = 30},
                            {reg = Region(922, 46, 3,3), percentage = 20},
                            {reg = Region(924, 60, 3,3), percentage = 10},
                            {reg = Region(930, 70, 3,3), percentage = 0},
                        }
                    },
                    {
                        activeCheck = {
                            Region(848, 66, 3,3),
                            Region(844, 60, 3,3),
                            Region(842, 54, 3,3)
                        },
                        shield = {
                            {reg = Region(891, 74, 3,3), percentage = 100},
                            {reg = Region(899, 60, 3,3), percentage = 90},
                            {reg = Region(900, 44, 3,3), percentage = 80},
                            {reg = Region(894, 29, 3,3), percentage = 70},
                            {reg = Region(881, 18, 3,3), percentage = 60},
                            {reg = Region(866, 15, 3,3), percentage = 50},
                            {reg = Region(849, 18, 3,3), percentage = 40},
                            {reg = Region(837, 29, 3,3), percentage = 30},
                            {reg = Region(830, 45, 3,3), percentage = 20},
                            {reg = Region(832, 61, 3,3), percentage = 10},
                            {reg = Region(839, 74, 3,3), percentage = 0},
                        },
                        armor = {
                            {reg = Region(887, 70, 3,3), percentage = 100},
                            {reg = Region(894, 59, 3,3), percentage = 90},
                            {reg = Region(895, 45, 3,3), percentage = 80},
                            {reg = Region(889, 32, 3,3), percentage = 70},
                            {reg = Region(879, 23, 3,3), percentage = 60},
                            {reg = Region(866, 20, 3,3), percentage = 50},
                            {reg = Region(852, 23, 3,3), percentage = 40},
                            {reg = Region(841, 32, 3,3), percentage = 30},
                            {reg = Region(836, 46, 3,3), percentage = 20},
                            {reg = Region(837, 60, 3,3), percentage = 10},
                            {reg = Region(843, 70, 3,3), percentage = 0},
                        }
                    },
                    {
                        activeCheck = {
                            Region(761, 66, 3,3),
                            Region(757, 60, 3,3),
                            Region(755, 54, 3,3)
                        },
                        shield = {
                            {reg = Region(805, 74, 3,3), percentage = 100},
                            {reg = Region(813, 60, 3,3), percentage = 90},
                            {reg = Region(814, 44, 3,3), percentage = 80},
                            {reg = Region(807, 29, 3,3), percentage = 70},
                            {reg = Region(794, 18, 3,3), percentage = 60},
                            {reg = Region(779, 15, 3,3), percentage = 50},
                            {reg = Region(762, 19, 3,3), percentage = 40},
                            {reg = Region(750, 29, 3,3), percentage = 30},
                            {reg = Region(744, 45, 3,3), percentage = 20},
                            {reg = Region(745, 61, 3,3), percentage = 10},
                            {reg = Region(753, 74, 3,3), percentage = 0},
                        },
                        armor = {
                            {reg = Region(801, 70, 3,3), percentage = 100},
                            {reg = Region(807, 58, 3,3), percentage = 90},
                            {reg = Region(808, 45, 3,3), percentage = 80},
                            {reg = Region(803, 32, 3,3), percentage = 70},
                            {reg = Region(792, 23, 3,3), percentage = 60},
                            {reg = Region(779, 20, 3,3), percentage = 50},
                            {reg = Region(765, 23, 3,3), percentage = 40},
                            {reg = Region(755, 33, 3,3), percentage = 30},
                            {reg = Region(749, 46, 3,3), percentage = 20},
                            {reg = Region(751, 60, 3,3), percentage = 10},
                            {reg = Region(757, 70, 3,3), percentage = 0},
                        }
                    },
                },
                currentShip = {
                    shield = {
                        {reg = Region(674, 576, 3,3), percentage = 100},
                        {reg = Region(666, 571, 3,3), percentage = 95},
                        {reg = Region(657, 567, 3,3), percentage = 90},
                        {reg = Region(648, 565, 3,3), percentage = 85},
                        {reg = Region(639, 564, 3,3), percentage = 80},
                        {reg = Region(629, 564, 3,3), percentage = 75},
                        {reg = Region(619, 567, 3,3), percentage = 70},
                        {reg = Region(611, 570, 3,3), percentage = 65},
                        {reg = Region(604, 574, 3,3), percentage = 60},
                        {reg = Region(595, 580, 3,3), percentage = 55},
                        {reg = Region(589, 587, 3,3), percentage = 50},
                        {reg = Region(584, 595, 3,3), percentage = 45},
                        {reg = Region(580, 603, 3,3), percentage = 40},
                        {reg = Region(577, 613, 3,3), percentage = 35},
                        {reg = Region(577, 622, 3,3), percentage = 30},
                        {reg = Region(577, 632, 3,3), percentage = 25},
                        {reg = Region(579, 641, 3,3), percentage = 20},
                        {reg = Region(582, 650, 3,3), percentage = 15},
                        {reg = Region(587, 657, 3,3), percentage = 10},
                        {reg = Region(592, 665, 3,3), percentage = 5},
                        {reg = Region(598, 671, 3,3), percentage = 0},
                    },
                    armor = {
                        {reg = Region(669, 582, 3,3), percentage = 100},
                        {reg = Region(663, 578, 3,3), percentage = 95},
                        {reg = Region(654, 574, 3,3), percentage = 90},
                        {reg = Region(647, 572, 3,3), percentage = 85},
                        {reg = Region(638, 571, 3,3), percentage = 80},
                        {reg = Region(630, 572, 3,3), percentage = 75},
                        {reg = Region(621, 574, 3,3), percentage = 70},
                        {reg = Region(615, 576, 3,3), percentage = 65},
                        {reg = Region(607, 580, 3,3), percentage = 60},
                        {reg = Region(600, 586, 3,3), percentage = 55},
                        {reg = Region(594, 592, 3,3), percentage = 50},
                        {reg = Region(590, 599, 3,3), percentage = 45},
                        {reg = Region(587, 606, 3,3), percentage = 40},
                        {reg = Region(585, 614, 3,3), percentage = 35},
                        {reg = Region(584, 623, 3,3), percentage = 30},
                        {reg = Region(584, 632, 3,3), percentage = 25},
                        {reg = Region(586, 639, 3,3), percentage = 20},
                        {reg = Region(589, 646, 3,3), percentage = 15},
                        {reg = Region(593, 654, 3,3), percentage = 10},
                        {reg = Region(598, 660, 3,3), percentage = 5},
                        {reg = Region(602, 665, 3,3), percentage = 0}
                    }
                }
            }
        }
    }
};