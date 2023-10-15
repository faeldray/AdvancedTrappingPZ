AdvancedTrapping = {}
AdvancedTrapping.checkExceptions = {}
AdvancedTrapping.Exceptions = {}
AdvancedTrapping.doTrapBaitMenu = {}

AdvancedTrapping.Exceptions["Maggots"] = true;
AdvancedTrapping.Exceptions["Maggots2"] = true;
AdvancedTrapping.Exceptions["MaggotsZombie"] = true;
AdvancedTrapping.Exceptions["Pillbug"] = true;
AdvancedTrapping.Exceptions["Termites"] = true;
AdvancedTrapping.Exceptions["SalamiSlice"] = true;

-- Food with less than 5 hunger value needs an exception
AdvancedTrapping.checkExceptions = function(food)
    print("AdvancedTrapping: Exception? "..food.." ",(AdvancedTrapping.Exceptions[food]~= nil));
    return AdvancedTrapping.Exceptions[food] ~= nil;
end


-- WARNING!! This is not a feeding advice for your personal or wild animals, just some random stuff from items_food.txt added to the list because the normal trap bait seems totally outdated to me!
if Animals ~= nil then
    for i,v in ipairs(Animals) do
        print("AdvancedTrapping: Found animal "..i.." type:"..v.type);
        
        if(v.type == "bird") then
            -- Adds 20+ new bird baits based on media/scripts/items_food.txt
            local newBird = v;
            local newBaits = newBird.baits;
            newBaits["Base.AmericanLadyCaterpillar"] = 40;
            newBaits["Base.BandedWoolyBearCaterpillar"] = 40;
            newBaits["Base.BerryBlack"] = 15;
            newBaits["Base.BerryBlue"] = 15;
            newBaits["Base.BerryGeneric1"] = 15;
            newBaits["Base.BerryGeneric2"] = 15;
            newBaits["Base.BerryGeneric3"] = 15;
            newBaits["Base.BerryGeneric4"] = 15;
            newBaits["Base.BerryGeneric5"] = 15;
            newBaits["Base.Centipede"] = 40;
            newBaits["Base.Centipede2"] = 40;
            newBaits["Base.Maggots"] = 45;
            newBaits["Base.Maggots2"] = 45;
            newBaits["Base.MaggotsZombie"] = 45;
            newBaits["Base.Millipede"] = 50;
            newBaits["Base.Millipede2"] = 50;            
            newBaits["Base.MonarchCaterpillar"] = 40;
            newBaits["Base.Pillbug"] = 40;
            newBaits["Base.SawflyLarva"] = 40;
            newBaits["Base.SilkMothCaterpillar"] = 40;
            newBaits["Base.SwallowtailCaterpillar"] = 40;
            newBaits["Base.Termites"] = 50;
            newBaits["Base.BreadDough"] = 40;
            newBaits["Base.BreadSlices"] = 40;
            newBaits["Base.Toast"] = 40;
            newBaits["Base.Baguette"] = 40;
            newBaits["Base.Cornbread"] = 40;
            newBaits["Base.TacoShell"] = 40;
            newBaits["Base.BakingTray_Muffin"] = 40;
            newBaits["Base.BagelPlain"] = 40;
            newBaits["Base.BagelPoppy"] = 40;
            newBaits["Base.BagelSesame"] = 40;
            newBaits["Base.Biscuit"] = 40;
            newBaits["Base.TortillaChips"] = 40;
            
            -- Birds can eat spicy berries like chili peppers because their taste buds are insensitive for the capsaicin
            newBaits["Base.PepperHabanero"] = 35;
            newBaits["Base.PepperJalapeno"] = 35;
            newBaits["Base.Pepperoni"] = 35;
            
            newBird["baits"] = newBaits;
            Animals[i] = newBird;
            print("AdvancedTrapping: Added new bird baits");
            
        elseif(v.type == "mouse" or v.type == "rat") then
            -- Adds 150+ new mouse and rat baits based on media/scripts/items_food.txt
            -- Still undecided on adding fish, so it is missing for now
            local newRodent = v;
            local newBaits = newRodent.baits;
            newBaits["Base.Acorn"] = 30;
            newBaits["Base.AmericanLadyCaterpillar"] = 15;
            newBaits["Base.Avocado"] = 20;
            newBaits["Base.BagelPlain"] = 35;
            newBaits["Base.BagelPoppy"] = 35;
            newBaits["Base.BagelSesame"] = 35;
            newBaits["Base.Baguette"] = 45;
            newBaits["Base.BaguetteSandwich"] = 50;
            newBaits["Base.BakingTray_Muffin"] = 35;
            newBaits["Base.Baloney"] = 35;
            newBaits["Base.BaloneySlice"] = 35;
            newBaits["Base.Banana"] = 25;
            newBaits["Base.BandedWoolyBearCaterpillar"] = 15;
            newBaits["Base.BeefJerky"] = 40;
            newBaits["Base.BellPepper"] = 35;
            newBaits["Base.BerryBlack"] = 35;
            newBaits["Base.BerryBlue"] = 35;
            newBaits["Base.BerryGeneric1"] = 25;
            newBaits["Base.BerryGeneric2"] = 25;
            newBaits["Base.BerryGeneric3"] = 25;
            newBaits["Base.BerryGeneric4"] = 25;
            newBaits["Base.BerryGeneric5"] = 25;
            newBaits["Base.Biscuit"] = 35;
            newBaits["Base.Bread"] = 40;
            newBaits["Base.BreadSlices"] = 40;
            newBaits["Base.BreadDough"] = 40;
            newBaits["Base.Broccoli"] = 20;
            newBaits["Base.Burger"] = 30;
            newBaits["Base.Burrito"] = 30;
            newBaits["Base.CakeBlackForest"] = 30;
            newBaits["Base.CakeCarrot"] = 30;
            newBaits["Base.CakeCheeseCake"] = 30;
            newBaits["Base.CakeChocolate"] = 30;
            newBaits["Base.CakeRedVelvet"] = 30;
            newBaits["Base.CakeSlice"] = 30;
            newBaits["Base.CakeStrawberryShortcake"] = 30;
            newBaits["Base.CannedCornedBeefOpen"] = 35
            newBaits["Base.Carrots"] = 25;
            newBaits["Base.Centipede2"] = 15;
            newBaits["Base.Centipede"] = 15;
            newBaits["Base.Cereal"] = 50;
            newBaits["Base.CheeseSandwich"] = 50;
            newBaits["Base.Cherry"] = 20;
            newBaits["Base.Chicken"] = 30;
            newBaits["Base.ChickenFoot"] = 30;
            newBaits["Base.ChickenFried"] = 30;
            newBaits["Base.ChickenNuggets"] = 30;
            newBaits["Base.ChocoCakes"] = 30;
            newBaits["Base.Cone"] = 30;
            newBaits["Base.CookiesChocolate"] = 30;
            newBaits["Base.CookiesOatmeal"] = 30;
            newBaits["Base.CookiesShortbread"] = 30;
            newBaits["Base.Corn"] = 30;
            newBaits["Base.Cornbread"] = 40;
            newBaits["Base.Corndog"] = 40;
            newBaits["Base.Crackers"] = 40;
            newBaits["Base.Crisps1"] = 35
            newBaits["Base.Crisps2"] = 35
            newBaits["Base.Crisps3"] = 35
            newBaits["Base.Crisps4"] = 35;
            newBaits["Base.Croissant"] = 40;
            newBaits["Base.Cupcake"] = 30;
            newBaits["Base.DeadBird"] = 15;
            newBaits["Base.Smallbirdmeat"] = 15;
            newBaits["Base.DeadMouse"] = 15;
            newBaits["Base.DeadRat"] = 15;
            newBaits["Base.Smallanimalmeat"] = 15;
            newBaits["Base.DehydratedMeatStick"] = 40;
            newBaits["Base.DogfoodOpen"] = 35
            newBaits["Base.DoughnutChocolate"] = 30;
            newBaits["Base.DoughnutPlain"] = 30;
            newBaits["Base.DriedBlackBeans"] = 25;
            newBaits["Base.DriedChickpeas"] = 25;
            newBaits["Base.DriedKidneyBeans"] = 25;
            newBaits["Base.DriedLentils"] = 25;
            newBaits["Base.DriedSplitPeas"] = 25;
            newBaits["Base.DriedWhiteBeans"] = 25;
            newBaits["Base.Egg"] = 45;
            newBaits["Base.EggBoiled"] = 45;
            newBaits["Base.EggOmelette"] = 45;
            newBaits["Base.Eggplant"] = 20;
            newBaits["Base.EggPoached"] = 45;
            newBaits["Base.EggScrambled"] = 45;
            newBaits["Base.FriedOnionRings"] = 55;
            newBaits["Base.FriedOnionRingsCraft"] = 55;
            newBaits["Base.Fries"] = 55;
            newBaits["Base.FruitSalad"] = 35;
            newBaits["Base.GrahamCrackers"] = 40;
            newBaits["Base.GranolaBar"] = 35;
            newBaits["Base.Grapes"] = 30;
            newBaits["Base.GrilledCheese"] = 70;
            newBaits["Base.Ham"] = 35;
            newBaits["Base.HamSlice"] = 35;
            newBaits["Base.Hotdog"] = 35;
            newBaits["Base.Lettuce"] = 25;
            newBaits["Base.Macandcheese"] = 40;
            newBaits["Base.Maggots2"] = 15;
            newBaits["Base.Maggots"] = 15;
            newBaits["Base.MaggotsZombie"] = 15;
            newBaits["Base.Mango"] = 30;
            newBaits["Base.MeatDumpling"] = 35;
            newBaits["Base.MeatPatty"] = 35;
            newBaits["Base.MeatSteamBun"] = 35;
            newBaits["Base.Millipede2"] = 15;            
            newBaits["Base.Millipede"] = 15;
            newBaits["Base.MincedMeat"] = 35;
            newBaits["Base.MonarchCaterpillar"] = 15;
            newBaits["Base.MuffinFruit"] = 30;
            newBaits["Base.MuffinGeneric"] = 30;
            newBaits["Base.Muffintray_Biscuit"] = 30;
            newBaits["Base.MushroomGeneric1"] = 15;
            newBaits["Base.MushroomGeneric2"] = 15;
            newBaits["Base.MushroomGeneric3"] = 15;
            newBaits["Base.MushroomGeneric4"] = 15;
            newBaits["Base.MushroomGeneric5"] = 15;
            newBaits["Base.MushroomGeneric6"] = 15;
            newBaits["Base.MushroomGeneric7"] = 15;
            newBaits["Base.MuttonChop"] = 35;
            newBaits["Base.OnionRings"] = 35;
            newBaits["Base.Pasta"] = 20;
            newBaits["Base.Peach"] = 30;
            newBaits["Base.PeanutButterSandwich"] = 45;
            newBaits["Base.Peanuts"] = 50;
            newBaits["Base.Pear"] = 30;
            newBaits["Base.Peas"] = 30;
            newBaits["Base.Perogies"] = 40;
            newBaits["Base.Pie"] = 35;
            newBaits["Base.PieApple"] = 35;
            newBaits["Base.PieBlueberry"] = 35;
            newBaits["Base.PiePumpkin"] = 35;
            newBaits["Base.Pillbug"] = 15;
            newBaits["Base.Pineapple"] = 30;
            newBaits["Base.Pizza"] = 60;
            newBaits["Base.PizzaWhole"] = 60;
            newBaits["Base.Plonkies"] = 35;
            newBaits["Base.Popcorn"] = 40;
            newBaits["Base.PorkChop"] = 35;
            newBaits["Base.PotatoPancakes"] = 35;
            newBaits["Base.Pretzel"] = 35;
            newBaits["Base.Pumpkin"] = 30;
            newBaits["Base.QuaggaCakes"] = 30;
            newBaits["Base.Rice"] = 30;
            newBaits["Base.Salami"] = 35;
            newBaits["Base.SalamiSlice"] = 35;
            newBaits["Base.Sandwich"] = 40;
            newBaits["Base.Sausage"] = 35;
            newBaits["Base.SawflyLarva"] = 15;
            newBaits["Base.ShrimpDumpling"] = 25;
            newBaits["Base.ShrimpFried"] = 25;
            newBaits["Base.SilkMothCaterpillar"] = 15;
            newBaits["Base.Springroll"] = 35;
            newBaits["Base.Steak"] = 35;
            newBaits["Base.SunflowerSeeds"] = 40;
            newBaits["Base.SushiEgg"] = 20;
            newBaits["Base.SwallowtailCaterpillar"] = 15;
            newBaits["Base.Taco"] = 35;
            newBaits["Base.TacoShell"] = 35;
            newBaits["Base.Tortilla"] = 40;
            newBaits["Base.TortillaChips"] = 40;
            newBaits["Base.WatermelonSliced"] = 30;
            newBaits["Base.WatermelonSmashed"] = 30;
            newBaits["Base.WildEggs"] = 45;
            newBaits["Base.Zucchini"] = 25;
            newBaits["Base.Toast"] = 40;
            newBaits["Base.TortillaChips"] = 40;
            
            newRodent.baits = newBaits;
            Animals[i] = newRodent;
            print("AdvancedTrapping: Added new rat / mouse baits");
            
        elseif(v.type == "squirrel") then
            -- Adds 60+ new squirrel baits based on media/scripts/items_food.txt
            local newSquirrel = v;
            local newBaits = newSquirrel.baits;
            newBaits["Base.Acorn"] = 50;
            newBaits["Base.AmericanLadyCaterpillar"] = 15;
            newBaits["Base.Avocado"] = 20;
            newBaits["Base.Baguette"] = 45;
            newBaits["Base.Banana"] = 25;
            newBaits["Base.BandedWoolyBearCaterpillar"] = 15;
            newBaits["Base.BerryBlack"] = 15;
            newBaits["Base.BerryBlue"] = 15;
            newBaits["Base.BerryGeneric1"] = 15;
            newBaits["Base.BerryGeneric2"] = 15;
            newBaits["Base.BerryGeneric3"] = 15;
            newBaits["Base.BerryGeneric4"] = 15;
            newBaits["Base.BerryGeneric5"] = 15;
            newBaits["Base.Bread"] = 40;
            newBaits["Base.BreadSlices"] = 40;
            newBaits["Base.BreadDough"] = 40;
            newBaits["Base.Broccoli"] = 20;
            newBaits["Base.Carrots"] = 25;
            newBaits["Base.Centipede2"] = 15;
            newBaits["Base.Centipede"] = 15;
            newBaits["Base.Cherry"] = 20;
            newBaits["Base.DeadBird"] = 15;
            newBaits["Base.Smallbirdmeat"] = 15;
            newBaits["Base.DeadMouse"] = 15;
            newBaits["Base.DeadRat"] = 15;
            newBaits["Base.Smallanimalmeat"] = 15;
            newBaits["Base.DriedBlackBeans"] = 25;
            newBaits["Base.DriedChickpeas"] = 25;
            newBaits["Base.DriedKidneyBeans"] = 25;
            newBaits["Base.DriedLentils"] = 25;
            newBaits["Base.DriedSplitPeas"] = 25;
            newBaits["Base.DriedWhiteBeans"] = 25;
            newBaits["Base.Egg"] = 45;
            newBaits["Base.FruitSalad"] = 35;
            newBaits["Base.Grapes"] = 30;
            newBaits["Base.Maggots2"] = 15;
            newBaits["Base.Maggots"] = 15;
            newBaits["Base.MaggotsZombie"] = 15;
            newBaits["Base.Mango"] = 30;
            newBaits["Base.Millipede2"] = 15;            
            newBaits["Base.Millipede"] = 15;
            newBaits["Base.MonarchCaterpillar"] = 15;
            newBaits["Base.MushroomGeneric1"] = 15;
            newBaits["Base.MushroomGeneric2"] = 15;
            newBaits["Base.MushroomGeneric3"] = 15;
            newBaits["Base.MushroomGeneric4"] = 15;
            newBaits["Base.MushroomGeneric5"] = 15;
            newBaits["Base.MushroomGeneric6"] = 15;
            newBaits["Base.MushroomGeneric7"] = 15;
            newBaits["Base.Pear"] = 30;
            newBaits["Base.Peas"] = 30;
            newBaits["Base.Pillbug"] = 15;
            newBaits["Base.Pineapple"] = 30;
            newBaits["Base.Pretzel"] = 35;
            newBaits["Base.Pumpkin"] = 30;
            newBaits["Base.Rice"] = 30;
            newBaits["Base.SawflyLarva"] = 15;
            newBaits["Base.SilkMothCaterpillar"] = 15;
            newBaits["Base.SunflowerSeeds"] = 40;
            newBaits["Base.SwallowtailCaterpillar"] = 15;
            newBaits["Base.WatermelonSliced"] = 30;
            newBaits["Base.WatermelonSmashed"] = 30;
            newBaits["Base.WildEggs"] = 45;
            newBaits["Base.Zucchini"] = 25;
            newBaits["Base.Toast"] = 40;
            newBaits["Base.Cornbread"] = 40;
            newBaits["Base.TacoShell"] = 40;
            newBaits["Base.BakingTray_Muffin"] = 40;
            newBaits["Base.BagelPlain"] = 40;
            newBaits["Base.BagelPoppy"] = 40;
            newBaits["Base.BagelSesame"] = 40;
            newBaits["Base.Biscuit"] = 40;
            newBaits["Base.TortillaChips"] = 40;
            
            newSquirrel.baits = newBaits;
            Animals[i] = newSquirrel;
            print("AdvancedTrapping: Added new squirrel baits");
        
        elseif(v.type == "rabbit") then
            -- Adds 20+ new rabbit baits based on media/scripts/items_food.txt
            local newRabbit = v;
            local newBaits = newRabbit.baits;
            newBaits["Base.Acorn"] = 20;
            newBaits["Base.Avocado"] = 40;
            newBaits["Base.Baguette"] = 10;
            newBaits["Base.BerryBlack"] = 15;
            newBaits["Base.BerryBlue"] = 15;
            newBaits["Base.BerryGeneric1"] = 15;
            newBaits["Base.BerryGeneric2"] = 15;
            newBaits["Base.BerryGeneric3"] = 15;
            newBaits["Base.BerryGeneric4"] = 15;
            newBaits["Base.BerryGeneric5"] = 15;
            newBaits["Base.Bread"] = 10;
            newBaits["Base.BreadSlices"] = 10;
            newBaits["Base.BreadDough"] = 10;
            newBaits["Base.Broccoli"] = 35;
            newBaits["Base.FruitSalad"] = 35;
            newBaits["Base.Grapes"] = 35;
            newBaits["Base.Mango"] = 35;
            newBaits["Base.Pear"] = 35;
            newBaits["Base.Peas"] = 35;
            newBaits["Base.Pineapple"] = 35;
            newBaits["Base.Pumpkin"] = 35;
            newBaits["Base.SunflowerSeeds"] = 20;
            newBaits["Base.WatermelonSliced"] = 35;
            newBaits["Base.WatermelonSmashed"] = 35;
            newBaits["Base.Watermelon"] = 35;
            newBaits["Base.Zucchini"] = 30;
            newBaits["Base.Toast"] = 10;
            newBaits["Base.Cornbread"] = 10;
            newBaits["Base.TacoShell"] = 10;
            newBaits["Base.BakingTray_Muffin"] = 10;
            newBaits["Base.BagelPlain"] = 10;
            newBaits["Base.BagelPoppy"] = 10;
            newBaits["Base.BagelSesame"] = 10;
            newBaits["Base.Biscuit"] = 10;
            newBaits["Base.TortillaChips"] = 10;
            newBaits["farming.RedRadish"] = 25;
            newBaits["Base.Daikon"] = 25;
            newBaits["Base.Leek"] = 30;
            newBaits["Base.Grapefruit"] = 35;
            newBaits["Base.Eggplant"] = 35;
            newBaits["Base.Rosehips"] = 30;

            newRabbit.baits = newBaits;
            Animals[i] = newRabbit;
            print("AdvancedTrapping: Added new rabbit baits");
        end
    end

    local frog_small = {};
    frog_small.type = "frog_small";
    frog_small.item = "AdvancedTrapping.DeadFrog"; -- see AdvancedTrapping_items.txt
    frog_small.minHour = 17;
    frog_small.maxHour = 9;
    frog_small.minSize = 4;
    frog_small.maxSize = 18;
    frog_small.zone = {};
    frog_small.zone["FarmLand"] = 5;
    frog_small.zone["TownZone"] = 2;
    frog_small.zone["Vegitation"] = 10;
    frog_small.zone["TrailerPark"] = 2;
    frog_small.zone["Forest"] = 10;
    frog_small.zone["DeepForest"] = 15;
    frog_small.traps = {};
    frog_small.traps["Base.TrapStick"] = 10;
    frog_small.traps["Base.TrapBox"] = 10;
    frog_small.traps["Base.TrapCrate"] = 10;
    frog_small.traps["Base.TrapSnare"] = 10;
    frog_small.traps["Base.TrapMouse"] = 5;
    frog_small.baits = {};
    frog_small.baits["Base.Grasshopper"] = 30;
    frog_small.baits["Base.Cockroach"] = 30;
    frog_small.baits["Base.Cricket"] = 30;
    frog_small.baits["Base.Worm"] = 30;
    frog_small.baits["Base.AmericanLadyCaterpillar"] = 30;
    frog_small.baits["Base.BandedWoolyBearCaterpillar"] = 30;
    frog_small.baits["Base.Centipede"] = 20;
    frog_small.baits["Base.Centipede2"] = 20;
    frog_small.baits["Base.Maggots"] = 35;
    frog_small.baits["Base.Maggots2"] = 35;
    frog_small.baits["Base.MaggotsZombie"] = 35;
    frog_small.baits["Base.Millipede"] = 20;
    frog_small.baits["Base.Millipede2"] = 20;
    frog_small.baits["Base.MonarchCaterpillar"] = 40;
    frog_small.baits["Base.Pillbug"] = 40;
    frog_small.baits["Base.SawflyLarva"] = 40;
    frog_small.baits["Base.SilkMothCaterpillar"] = 40;
    frog_small.baits["Base.SwallowtailCaterpillar"] = 40;
    frog_small.baits["Base.Termites"] = 20;
    table.insert(Animals, frog_small);
    
    local frog_large = {};
    frog_large.type = "frog_large";
    frog_large.item = "AdvancedTrapping.DeadFrog"; -- see AdvancedTrapping_items.txt
    frog_large.strength = 12;
    frog_large.minHour = 19;
    frog_large.maxHour = 7;
    frog_large.minSize = 14;
    frog_large.maxSize = 39;
    frog_large.zone = {};
    frog_large.zone["FarmLand"] = 5;
    frog_large.zone["TownZone"] = 2;
    frog_large.zone["Vegitation"] = 5;
    frog_large.zone["TrailerPark"] = 2;
    frog_large.zone["Forest"] = 8;
    frog_large.zone["DeepForest"] = 12;
    frog_large.traps = {};
    frog_large.traps["Base.TrapStick"] = 2;
    frog_large.traps["Base.TrapBox"] = 10;
    frog_large.traps["Base.TrapCrate"] = 10;
    frog_large.traps["Base.TrapSnare"] = 5;
    frog_large.baits = {};
    frog_large.baits["Base.Grasshopper"] = 15;
    frog_large.baits["Base.Cockroach"] = 15;
    frog_large.baits["Base.Cricket"] = 15;
    frog_large.baits["Base.Worm"] = 15;
    frog_large.baits["Base.AmericanLadyCaterpillar"] = 15;
    frog_large.baits["Base.BandedWoolyBearCaterpillar"] = 15;
    frog_large.baits["Base.Centipede"] = 10;
    frog_large.baits["Base.Centipede2"] = 10;
    frog_large.baits["Base.Millipede"] = 10;
    frog_large.baits["Base.Millipede2"] = 10;
    frog_large.baits["Base.MonarchCaterpillar"] = 15;
    frog_large.baits["Base.SawflyLarva"] = 15;
    frog_large.baits["Base.SilkMothCaterpillar"] = 15;
    frog_large.baits["Base.SwallowtailCaterpillar"] = 15;
    frog_large.baits["Base.Termites"] = 10;
    frog_large.baits["Base.DeadBird"] = 20;
    frog_large.baits["Base.Smallbirdmeat"] = 20;
    frog_large.baits["Base.DeadMouse"] = 25;
    frog_large.baits["Base.Smallanimalmeat"] = 15;
    frog_large.baits["Base.FishFillet"] = 20;
    frog_large.baits["Base.FrogMeat"] = 20;
    frog_large.baits["AdvancedTrapping.DeadFrog"] = 20;
    table.insert(Animals, frog_large);
    
    print("AdvancedTrapping: Added frog baits");
else
    print("AdvancedTrapping: Animals table not found!")
end

-- Adds an add bait+ option for baits that need an exception, the code is based on ISTrapMenu.lua
AdvancedTrapping.doTrapBaitMenu = function(player, context, worldobjects, test)
    --print("AdvancedTrapping: Adding custom exception baits to context menu");
    local placedTrap = nil;
    local playerInv = getSpecificPlayer(player):getInventory();
    for i,v in ipairs(worldobjects) do
        placedTrap = CTrapSystem.instance:getLuaObjectAt(v:getX(), v:getY(), v:getZ());
        if placedTrap then
            if not placedTrap.bait and not placedTrap.animal.type and playerInv:contains("Type:Food") then
                local alreadyAddedItems = {};
                local items = {}
                for i = 0, playerInv:getItems():size() - 1 do
                    local vItem = playerInv:getItems():get(i);
                    if AdvancedTrapping.checkExceptions(vItem:getType()) and not vItem:isCooked() and not alreadyAddedItems[vItem:getName()] then
                        table.insert(items, vItem)
                        alreadyAddedItems[vItem:getName()] = true;
                    end
                end
                if #items > 0 then
                    if test then return ISWorldObjectContextMenu.setTest() end
                    local baitOption = context:addOption(getText("ContextMenu_Add_Bait").."+", worldobjects, nil);
                    local subMenuBait = context:getNew(context);
                    context:addSubMenu(baitOption, subMenuBait);
                    for _,vItem in ipairs(items) do
                        subMenuBait:addOption(vItem:getName(), worldobjects, ISTrapMenu.onAddBait, vItem, placedTrap, getSpecificPlayer(player));
                    end
                end
            end
            break;
        end
    end
end

Events.OnFillWorldObjectContextMenu.Add(AdvancedTrapping.doTrapBaitMenu);

