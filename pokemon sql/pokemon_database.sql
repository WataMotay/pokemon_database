-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2016 at 06:32 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pokemon_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `abilities`
--

CREATE TABLE IF NOT EXISTS `abilities` (
  `Ability` varchar(20) NOT NULL,
  `Description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `abilities`
--

INSERT INTO `abilities` (`Ability`, `Description`) VALUES
('Air Lock', 'Cancels weather effects (such as rain) in battle.'),
('Arena Trap', 'Arena Trap prevents opponents from fleeing or switching out. "Raised" Pokémon are not affected.'),
('Battle Armor', 'Prevents critical hits.'),
('Blaze', 'Increases the power of fire-type attacks to 150% when HP falls below 1/3.'),
('Chlorophyll', 'Raises the Pokémons speed when the sun is bright.'),
('Clear Body', 'Prevents an opponents move (such as Tail Whip) from lowering stats like attack power and speed.'),
('Cloud Nine', 'Cancels weather effects (such as rain) in battle.'),
('Color Change', 'Changes the own Pokémons type to match the foes last move.'),
('Compoundeyes', 'Raises accuracy 30% for all moves.'),
('Cute Charm', 'Infatuates the foe on contact 30% of the time.'),
('Damp', 'Prevents the use of Selfdestruct and Explosion.'),
('Drizzle', 'Summons rain in battle.'),
('Drought', 'Summons sunlight in battle.'),
('Early Bird', 'The Pokémon awakens quickly from sleep.'),
('Effect Spore', 'Afflicts the foe with poison, paralysis, or sleep 10% of the time when it attacks directly.'),
('Flame Body', 'Burns the foe on contact 30% of the time.'),
('Flash Fire', 'The Pokémon becomes more powerful if hit by a fire attack. Pokémon does not get damaged by Fire attacks.'),
('Forecast', 'Changes type and appearance with the weather.'),
('Guts', 'Attack is boosted to 150% if the Pokémon is inflicted with a status condition.'),
('Huge Power', 'Increases attack, but the effect is halved when abilities are swapped.'),
('Hustle', 'Attack is boosted to 150%, but accuracy goes down to 80%.'),
('Hyper Cutter', 'Prevents the reduction of the users attack power.'),
('Illuminate', 'Encounter rate increases when Pokémon is in lead position.'),
('Immunity', 'Prevents poisoning.'),
('Inner Focus', 'The Pokémon cannot be forced to flinch.'),
('Insomnia', 'The Pokémon cannot fall asleep.'),
('Intimidate', 'Lowers the foes attack power.'),
('Keen Eye', 'Prevents loss of accuracy.'),
('Levitate', 'Not hit by ground-based attacks.'),
('Lightningrod', 'Draws electrical moves away from a partner in a double battle.'),
('Limber', 'Prevents paralysis.'),
('Liquid Ooze', 'Causes damage to foe when Leech Seed, Absorb, or other HP-sucking attacks are used.'),
('Magma Armor', 'The Pokémon cannot be frozen.'),
('Magnet Pull', 'Prevents steel-type Pokémon from fleeing from battle.'),
('Marvel Scale', 'Defense is boosted to 150% if the Pokémon has a status condition.'),
('Minus', 'In a double battle, when a Pokémon with Plus is the partner, special attack is multiplied by 1.5.'),
('Natural Cure', 'Status conditions are healed upon switching the Pokémon out of battle.'),
('Oblivious', 'Prevents the Pokémon from becoming attracted to the foe.'),
('Overgrow', 'Increases the power of grass-type attacks to 150% when HP falls below 1/3.'),
('Own Tempo', 'Prevents the Pokémon from becoming confused in battle.'),
('Pickup', 'May pick up items.'),
('Plus', 'In a double battle, when a Pokémon with Minus is the partner, special attack is multiplied by 1.5.'),
('Poison Point', 'Poisons the foe on contact 30% of the time.'),
('Pressure', 'Doubles the foes use of PP, making it run out of stamina.'),
('Pure Power', 'Increases attack, but the effect is halved when abilities are swapped.'),
('Rain Dish', 'Slight HP recovery in the rain.'),
('Rock Head', 'Prevents recoil damage.'),
('Rough Skin', 'Recoil is imposed after physical attack on the Pokémon with this ability.'),
('Run Away', 'Makes fleeing from battle easier.'),
('Sand Stream', 'Summons a sandstorm.'),
('Sand Veil', 'Increases the Pokémons evasion in a sandstorm.'),
('Serene Grace', 'Doubles the chance that an attacks secondary effects (such as status conditions) will work.'),
('Shadow Tag', 'Prevents the foes escape.'),
('Shed Skin', 'Gives Pokémon a 30% chance of curing status conditions every turn.'),
('Shell Armor', 'Blocks critical hits.'),
('Shield Dust', 'Prevents an attacks secondary effects.'),
('Soundproof', 'The Pokémon is not affected by sound-based moves.'),
('Speed Boost', 'Gradually boosts speed every turn.'),
('Static', 'Paralyzes on contact 30% of the time.'),
('Stench', 'Helps to repel wild Pokémon.'),
('Sticky', 'Hold Prevents the foe from stealing items.'),
('Sturdy', 'Negates one-hit knockout attacks.'),
('Suction Cups', 'Firmly anchors the body to the ground, preventing the Pokémon from being switched out of battle.'),
('Swarm', 'Increases the power of bug-type attacks to 150% when HP falls below 1/3.'),
('Swift Swim', 'Speed is increased when it is raining.'),
('Synchronize', 'Passes status problems onto the foe.'),
('Thick Fat', 'Cannot be burned or frozen.'),
('Torrent', 'Increases the power of water-type attacks to 150% when HP falls below 1/3.'),
('Trace', 'Copies the foes special ability.'),
('Truant', 'Moves only every other turn.'),
('Vital Spirit', 'Prevents the Pokémon from falling asleep.'),
('Volt Absorb', 'The Pokémon absorbs electric attacks, turning it into HP.'),
('Water Absorb', 'The Pokémon absorbs water-based attacks, turning it into HP.'),
('Water Veil', 'The Pokémon cannot be burned'),
('White Smoke', 'Prevents an opponents move (such as Tail Whip) from lowering stats like attack power and speed.'),
('Wonder Guard', 'Only attacks with a type advantage will afflict damage.');

-- --------------------------------------------------------

--
-- Table structure for table `can_learn_hm`
--

CREATE TABLE IF NOT EXISTS `can_learn_hm` (
  `Name` varchar(20) NOT NULL,
  `Cut` char(1) NOT NULL,
  `Fly` char(1) NOT NULL,
  `Surf` char(1) NOT NULL,
  `Strength` char(1) NOT NULL,
  `Flash` char(1) NOT NULL,
  `Rock_Smash` char(1) NOT NULL,
  `Waterfall` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `can_learn_hm`
--

INSERT INTO `can_learn_hm` (`Name`, `Cut`, `Fly`, `Surf`, `Strength`, `Flash`, `Rock_Smash`, `Waterfall`) VALUES
('Abra', 'N', 'N', 'N', 'N', 'Y', 'N', 'N'),
('Aerodactyl', 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N'),
('Alakazam', 'N', 'N', 'N', 'N', 'Y', 'N', 'N'),
('Arbok', 'N', 'N', 'N', 'Y', 'N', 'N', 'N'),
('Arcanine', 'N', 'N', 'N', 'Y', 'N', 'Y', 'N'),
('Articuno', 'N', 'Y', 'N', 'N', 'N', 'Y', 'N'),
('Beedrill', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N'),
('Bellsprout', 'Y', 'N', 'N', 'N', 'Y', 'N', 'N'),
('Blastoise', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'Y'),
('Bulbasaur', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'N'),
('Butterfree', 'N', 'N', 'N', 'N', 'Y', 'N', 'N'),
('Caterpie', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
('Chansey', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'N'),
('Charizard', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 'N'),
('Charmander', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'N'),
('Charmeleon', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'N'),
('Clefable', 'N', 'N', 'N', 'Y', 'Y', 'N', 'N'),
('Clefairy', 'N', 'N', 'N', 'Y', 'Y', 'N', 'N'),
('Cloyster', 'N', 'N', 'Y', 'N', 'N', 'N', 'N'),
('Cubone', 'N', 'N', 'N', 'Y', 'N', 'Y', 'N'),
('Dewgong', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y'),
('Diglett', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N'),
('Ditto', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
('Dodrio', 'N', 'Y', 'N', 'N', 'Y', 'N', 'N'),
('Doduo', 'N', 'Y', 'N', 'N', 'Y', 'N', 'N'),
('Dragonair', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y'),
('Dragonite', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y'),
('Dratini', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y'),
('Drowzee', 'N', 'N', 'N', 'N', 'Y', 'N', 'N'),
('Dugtrio', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N'),
('Eevee', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
('Ekans', 'N', 'N', 'N', 'Y', 'N', 'N', 'N'),
('Elecatbuzz', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'N'),
('Electrode', 'N', 'N', 'N', 'N', 'Y', 'N', 'N'),
('Exeggcute', 'N', 'N', 'N', 'Y', 'Y', 'N', 'N'),
('Exeggutor', 'N', 'N', 'N', 'Y', 'Y', 'N', 'N'),
('Farfetch''d', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N'),
('Fearow', 'N', 'Y', 'N', 'N', 'N', 'N', 'N'),
('Flareon', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
('Gastly', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
('Gengar', 'N', 'N', 'N', 'Y', 'N', 'Y', 'N'),
('Geodude', 'N', 'N', 'N', 'Y', 'N', 'Y', 'N'),
('Gloom', 'Y', 'N', 'N', 'N', 'Y', 'N', 'N'),
('Golbat', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
('Goldeen', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y'),
('Golduck', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y'),
('Golem', 'N', 'N', 'N', 'Y', 'N', 'Y', 'N'),
('Graveler', 'N', 'N', 'N', 'Y', 'N', 'Y', 'N'),
('Grimer', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
('Growlithe', 'N', 'N', 'N', 'Y', 'N', 'Y', 'N'),
('Gyarados', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'Y'),
('Haunter', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
('Hitmonchan', 'N', 'N', 'N', 'Y', 'N', 'Y', 'N'),
('Hitmonlee', 'N', 'N', 'N', 'Y', 'N', 'Y', 'N'),
('Horsea', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y'),
('Hypno', 'N', 'N', 'N', 'N', 'Y', 'N', 'N'),
('Ivysaur', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'N'),
('Jigglypuff', 'N', 'N', 'N', 'Y', 'Y', 'N', 'N'),
('Jolteon', 'N', 'N', 'N', 'N', 'Y', 'N', 'N'),
('Jynx', 'N', 'N', 'N', 'N', 'Y', 'N', 'N'),
('Kabuto', 'N', 'N', 'Y', 'N', 'N', 'Y', 'Y'),
('Kabutops', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'Y'),
('Kadabra', 'N', 'N', 'N', 'N', 'Y', 'N', 'N'),
('Kakuna', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
('Khangaskhan', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'N'),
('Kingler', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'N'),
('Koffing', 'N', 'N', 'N', 'N', 'Y', 'N', 'N'),
('Krabby', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'N'),
('Lapras', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'Y'),
('Lickitung', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'N'),
('Machamp', 'N', 'N', 'N', 'Y', 'N', 'Y', 'N'),
('Machoke', 'N', 'N', 'N', 'Y', 'N', 'Y', 'N'),
('Machop', 'N', 'N', 'N', 'Y', 'N', 'Y', 'N'),
('Magikarp', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
('Magmar', 'N', 'N', 'N', 'Y', 'N', 'Y', 'N'),
('Magnemite', 'N', 'N', 'N', 'N', 'Y', 'N', 'N'),
('Magneton', 'N', 'N', 'N', 'N', 'Y', 'N', 'N'),
('Mankey', 'N', 'N', 'N', 'Y', 'N', 'Y', 'N'),
('Marowak', 'N', 'N', 'N', 'Y', 'N', 'Y', 'N'),
('Meowth', 'Y', 'N', 'N', 'N', 'Y', 'N', 'N'),
('Metapod', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
('Mew', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('Mewtwo', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'N'),
('Moltres', 'N', 'Y', 'N', 'N', 'N', 'Y', 'N'),
('Mr.Mime', 'N', 'N', 'N', 'N', 'Y', 'N', 'N'),
('Muk', 'N', 'N', 'N', 'Y', 'N', 'Y', 'N'),
('Nidoking', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'Y'),
('Nidoqueen', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'Y'),
('Nidoran', 'Y', 'N', 'N', 'Y', 'N', 'N', 'Y'),
('NidoranF', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'N'),
('Nidorina', 'Y', 'N', 'N', 'Y', 'N', 'N', 'Y'),
('Nidorino', 'Y', 'N', 'N', 'Y', 'N', 'N', 'Y'),
('Ninetales', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
('Oddish', 'Y', 'N', 'N', 'N', 'Y', 'N', 'N'),
('Omanyte', 'N', 'N', 'Y', 'N', 'N', 'Y', 'Y'),
('Omastar', 'N', 'N', 'Y', 'N', 'N', 'Y', 'Y'),
('Onix', 'N', 'N', 'N', 'Y', 'N', 'Y', 'N'),
('Paras', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'N'),
('Parasect', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'N'),
('Persian', 'Y', 'N', 'N', 'N', 'Y', 'N', 'N'),
('Pidgeot', 'N', 'Y', 'N', 'N', 'N', 'N', 'N'),
('Pidgeotto', 'N', 'Y', 'N', 'N', 'N', 'N', 'N'),
('Pidgey', 'N', 'Y', 'N', 'N', 'N', 'N', 'N'),
('Pikachu', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'N'),
('Pinsir', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'N'),
('Poliwag', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y'),
('Poliwhirl', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'Y'),
('Poliwrath', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'Y'),
('Ponyta', 'N', 'N', 'N', 'Y', 'N', 'N', 'N'),
('Porygon', 'N', 'N', 'N', 'N', 'Y', 'N', 'N'),
('Primeape', 'N', 'N', 'N', 'Y', 'N', 'Y', 'N'),
('Psyduck', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'Y'),
('Raichu', 'N', 'N', 'N', 'Y', 'Y', 'Y', 'N'),
('Rapidash', 'N', 'N', 'N', 'Y', 'N', 'N', 'N'),
('Raticate', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'N'),
('Rattata', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N'),
('Rhydon', 'Y', 'N', 'Y', 'Y', 'N', 'Y', 'N'),
('Rhyhorn', 'N', 'N', 'N', 'Y', 'N', 'Y', 'N'),
('Sandshrew', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'N'),
('Sandslash', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'N'),
('Scyther', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y'),
('Seadra', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y'),
('Seaking', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y'),
('Seel', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y'),
('Shellder', 'N', 'N', 'Y', 'N', 'N', 'N', 'N'),
('Slowbro', 'N', 'N', 'Y', 'Y', 'Y', 'Y', 'N'),
('Slowpoke', 'N', 'N', 'Y', 'Y', 'Y', 'N', 'N'),
('Snorlax', 'N', 'N', 'Y', 'Y', 'N', 'N', 'N'),
('Spearow', 'N', 'Y', 'N', 'N', 'N', 'N', 'N'),
('Squirtle', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'Y'),
('Starmie', 'N', 'N', 'Y', 'N', 'Y', 'N', 'Y'),
('Staryu', 'N', 'N', 'Y', 'N', 'Y', 'N', 'Y'),
('Tangela', 'Y', 'N', 'N', 'N', 'Y', 'Y', 'N'),
('Tauros', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'N'),
('Tentacool', 'Y', 'N', 'Y', 'N', 'N', 'N', 'Y'),
('Tentacruel', 'Y', 'N', 'Y', 'N', 'N', 'N', 'Y'),
('Vaporeon', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y'),
('Venomoth', 'N', 'N', 'N', 'N', 'Y', 'N', 'N'),
('Venonat', 'N', 'N', 'N', 'N', 'Y', 'N', 'N'),
('Venusaur', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'N'),
('Victrebell', 'Y', 'N', 'N', 'N', 'Y', 'N', 'N'),
('Vileplume', 'Y', 'N', 'N', 'N', 'Y', 'N', 'N'),
('Voltorb', 'N', 'N', 'N', 'N', 'Y', 'N', 'N'),
('Vulpix', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
('Wartortle', 'N', 'N', 'Y', 'Y', 'N', 'Y', 'Y'),
('Weedle', 'N', 'N', 'N', 'N', 'N', 'N', 'N'),
('Weepinbell', 'Y', 'N', 'N', 'N', 'Y', 'N', 'N'),
('Weezing', 'N', 'N', 'N', 'N', 'Y', 'N', 'N'),
('Wigglytuff', 'N', 'N', 'N', 'Y', 'Y', 'N', 'N'),
('Zapdos', 'N', 'Y', 'N', 'N', 'Y', 'Y', 'N'),
('Zubat', 'N', 'N', 'N', 'N', 'N', 'N', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `evolution`
--

CREATE TABLE IF NOT EXISTS `evolution` (
  `Name` varchar(20) NOT NULL,
  `Evolution_method` varchar(50) NOT NULL,
  `Evolves_Into` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `evolution`
--

INSERT INTO `evolution` (`Name`, `Evolution_method`, `Evolves_Into`) VALUES
('Bulbasaur', 'Level 16', 'Ivysaur'),
('Ivysaur', 'Level 32', 'Venusaur'),
('Charmander', 'Level 16', 'Charmeleon'),
('Charmeleon', 'Level 36', 'Charizard'),
('Squirtle', 'Level 16', 'Wartortle'),
('Wartortle', 'Level 36', 'Blastoise'),
('Caterpie', 'Level 7', 'Metapod'),
('Metapod', 'Level 10', 'Butterfree'),
('Weedle', 'Level 7', 'Kakuna'),
('Kakuna', 'Level 10', 'Beedrill'),
('Pidgey', 'Level 18', 'Pidgeotto'),
('Pidgeotto', 'Level 36', 'Pidgeot'),
('Rattata', 'Level 20', 'Raticate'),
('Spearow', 'Level 20', 'Fearow'),
('Ekans', 'Level 22', 'Arbok'),
('Pikachu', 'Thunder Stone', 'Raichu'),
('Sandshrew', 'Level 22', 'Sandslash'),
('NidoranF', 'Level 16', 'Nidorina'),
('Nidorina', 'Moon Stone', 'Nidoqueen'),
('Nidoran', 'Level 16', 'Nidorino'),
('Nidorino', 'Moon Stone', 'Nidoking'),
('Clefairy', 'Moon Stone', 'Clefable'),
('Vulpix', 'Fire Stone', 'Ninetales'),
('Jigglypuff', 'Moon Stone', 'Wigglytuff'),
('Golbat', 'Happiness', 'Crobat'),
('Oddish', 'Level 21', 'Gloom'),
('Gloom', 'Leaf Stone', 'Vileplume'),
('Gloom', 'Sun Stone', 'Bellossom'),
('Paras', 'Level 24', 'Parasect'),
('Venonat', 'Level 31', 'Venomoth'),
('Diglett', 'Level 26', 'Dugtrio'),
('Meowth', 'Level 28', 'Persian'),
('Psyduck', 'Level 33', 'Golduck'),
('Mankey', 'Level 28', 'Primeape'),
('Growlithe', 'Fire Stone', 'Arcanine'),
('Poliwag', 'Level 25', 'Poliwhirl'),
('Poliwhirl', 'Water Stone', 'Poliwrath'),
('Poliwhirl', 'Trade holding King''s Rock ', 'Politoed'),
('Abra', 'Level 16', 'Kadabra'),
('Kadabra', 'Trade', 'Alakazam'),
('Machop', 'Level 28', 'Machoke'),
('Machoke', 'Trade', 'Machamp'),
('Bellsprout', 'Level 21', 'Leaf Stone'),
('Tentacool', 'Level 30', 'Tentacruel'),
('Geodude', 'Level 25', 'Graveler'),
('Graveler', 'Trade', 'Golem'),
('Ponyta', 'Level 40', 'Rapidash'),
('Slowpoke', 'Level 37', 'Slowbro'),
('Slowpoke', 'trade holding King''s Rock', 'Slowking'),
('Magnemite', 'Level 30', 'Magneton'),
('Doduo', 'Level 31', 'Dodrio'),
('Seel', 'Level 34', 'Dewgong'),
('Grimer', 'Level 38', 'Muk'),
('Shellder', 'Water Stone', 'Cloyster'),
('Gastly', 'Level 25', 'Haunter'),
('Haunter', 'Trade', 'Gengar'),
('Onix', 'trade holding Metal Coat', 'Steelix'),
('Drowzee', 'Level 26', 'Hypno'),
('Krabby', 'Level 28', 'Kingler'),
('Voltorb', 'Level 30', 'Electrode'),
('Exeggcute', 'Leaf Stone', ' Exeggutor'),
('Cubone', 'Level 28', 'Marowak'),
('Koffing', 'Level 35', 'Weezing'),
('Chansey', 'Happiness', 'Blissey'),
('Horsea', 'Level 32', 'Seadra'),
('Goldeen', 'Level 33', 'Seaking'),
('Staryu', 'Water Stone', 'Starmie'),
('Scyther', 'trade holding Metal Coa', 'Scizor'),
('Smoochum', 'Level 30', 'Jynx'),
('Elekid', 'Level 30', 'Electabuzz'),
('Magby', 'Level 30', 'Magmar'),
('Magikarp', 'Level 20', 'Gyarados'),
('Eevee', 'Water Stone', 'Vaporeon'),
('Eevee', 'Thunder Stone', 'Jolteon'),
('Eevee', 'Fire Stone', 'Flareon'),
('Eevee', 'Happiness, Daytime', 'Espeon'),
('Eevee', 'Happiness, Nighttime', 'Umbreon'),
('Porygon', 'trade holding Up-Grade', 'Porygon2'),
('Omanyte', 'Level 40', 'Omastar'),
('Kabuto', 'Level 40', 'Kabutops'),
('Dratini', 'Level 30', 'Dragonair'),
('Dragonair', 'Level 55', 'Dragonite');

-- --------------------------------------------------------

--
-- Table structure for table `hm_moves`
--

CREATE TABLE IF NOT EXISTS `hm_moves` (
  `Move_name` varchar(20) NOT NULL,
  `Type` varchar(15) NOT NULL,
  `Power` int(3) NOT NULL,
  `Accuracy` int(3) NOT NULL,
  `PP` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hm_moves`
--

INSERT INTO `hm_moves` (`Move_name`, `Type`, `Power`, `Accuracy`, `PP`) VALUES
('Cut', 'Normal', 50, 95, 30),
('Fly', 'Flying', 70, 95, 15),
('Surf', 'Water', 95, 100, 15),
('Strength', 'Normal', 80, 100, 15),
('Flash', 'Normal', 0, 70, 20),
('Rock_Smash', 'Fighting', 20, 100, 15),
('Waterfall', 'Water', 80, 100, 15);

-- --------------------------------------------------------

--
-- Table structure for table `pokemon`
--

CREATE TABLE IF NOT EXISTS `pokemon` (
  `Name` varchar(15) NOT NULL DEFAULT '',
  `Pokedex_ID` int(3) NOT NULL,
  `Height` varchar(10) NOT NULL,
  `Weight` double(10,1) NOT NULL,
  `Can_evolve` char(1) NOT NULL,
  `Primary_type` varchar(20) DEFAULT NULL,
  `Secondary_type` varchar(20) DEFAULT NULL,
  `Ability` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pokemon`
--

INSERT INTO `pokemon` (`Name`, `Pokedex_ID`, `Height`, `Weight`, `Can_evolve`, `Primary_type`, `Secondary_type`, `Ability`) VALUES
('Abra', 63, ' 2''11"', 43.0, 'Y', 'Psychic', 'None', 'Synchronize/Inner Focus'),
('Aerodactyl', 142, '5''11"', 130.1, 'N', 'Rock', 'Flying', 'Rock Head/Pressure'),
('Alakazam', 65, '4''11"', 105.8, 'N', 'Psychic', 'None', 'Synchronize/Inner Focus'),
('Arbok', 24, '11''06"', 143.3, 'N', 'Poison', 'None', 'Shed skin/Intimidate'),
('Arcanine', 59, '6''03"', 341.7, 'N', 'Fire', 'None', 'Intimidate/Flash Fire'),
('Articuno', 144, '5''07"', 122.1, 'N', 'Ice', 'Flying', 'Pressure'),
('Beedrill', 15, '3''03"', 65.0, 'N', 'Bug', 'Poison', 'Swarm'),
('Bellsprout', 69, '2''04"', 8.8, 'Y', 'Grass', 'Poison', 'Chlorophyll'),
('Blastoise', 9, '5''03"', 188.5, 'N', 'Water', 'None', 'Torrent'),
('Bulbasaur', 1, '2''04"', 15.2, 'Y', 'Grass', 'Poison', 'Overgrow'),
('Butterfree', 12, '3''07"', 70.5, 'N', 'Bug', 'Flying', 'Compound Eyes'),
('Caterpie', 10, '1''00"', 6.4, 'Y', 'Bug', 'None', 'Shield Dust'),
('Chansey', 113, '3''07"', 76.3, 'Y', 'Normal', 'None', ' Natural Cure/Serene Grace'),
('Charizard', 6, '5''07"', 199.5, 'N', 'Fire', 'Flying', 'Blaze'),
('Charmander', 4, '2''00"', 18.7, 'Y', 'Fire', 'None', 'Blaze'),
('Charmeleon', 5, '3''07"', 41.9, 'Y', 'Fire', 'None', 'Blaze'),
('Clefable', 36, '4''03"', 88.2, 'N', 'Normal', 'None', 'Cute Charm'),
('Clefairy', 35, '2''00"', 16.5, 'Y', 'Normal', 'None', 'Cute Charm'),
('Cloyster', 91, '4''11"', 292.1, 'N', 'Water', 'Ice', 'Shell Armor'),
('Cubone', 104, '1''04"', 14.3, 'Y', 'Ground', 'None', 'Rock Head/Lightning '),
('Dewgong', 87, '5''07"', 264.6, 'N', 'Water', 'Ice', 'Thick Fat'),
('Diglett', 50, '0''08"', 1.8, 'Y', 'Ground', 'None', 'Sand Veil/Arena Trap'),
('Ditto', 132, '1''00"', 8.8, 'N', 'Normal', 'None', 'Limber'),
('Dodrio', 85, '5''11"', 187.8, 'N', 'Normal', 'Flying', 'Run Away/Early Bird'),
('Doduo', 84, '4''07"', 86.4, 'Y', 'Normal', 'Flying', 'Run Away/Early Bird'),
('Dragonair', 148, '13''01"', 36.4, 'Y', 'Dragon', 'None', 'Shed Skin'),
('Dragonite', 149, '7''03"', 463.0, 'N', 'Dragon', 'Flying', 'Inner Focus'),
('Dratini', 147, '5''11"', 7.3, 'Y', 'Dragon', 'None', 'Shed Skin'),
('Drowzee', 96, '3''03"', 71.4, 'Y', 'Psychic', 'None', 'Insomnia'),
('Dugtrio', 51, '2''04"', 73.4, 'N', 'Ground', 'None', 'Sand Veil/Arena Trap'),
('Eevee', 133, '1''00"', 14.3, 'Y', 'Normal', 'None', 'Run Away'),
('Ekans', 23, '6''07"', 15.2, 'Y', 'Poison', 'None', 'Shed skin/Intimidate'),
('Electabuzz', 125, '3''07"', 66.1, 'N', 'Electric ', 'None', 'Static'),
('Electrode', 101, '3''11"', 146.8, 'N', 'Electric', 'None', 'Soundproof/Static'),
('Exeggcute', 102, '1''04"', 5.5, 'Y', 'Grass', 'Psychic', 'Chlorophyll'),
('Exeggutor', 103, '6''07"', 264.6, 'N', 'Grass', 'Psychic', 'Chlorophyll'),
('Farfetch''d', 83, '2''07"', 33.1, 'N', 'Normal', 'Flying', 'Keen Eye/Inner Focus'),
('Fearow', 22, '3''11"', 83.8, 'N', 'Normal', 'Flying', 'Keen Eye'),
('Flareon', 136, '2''11"', 55.1, 'N', 'Fire', 'None', 'Flash Fire'),
('Gastly', 92, '4''03"', 0.2, 'Y', 'Ghost', 'Poison', 'Levitate'),
('Gengar', 94, '4''11"', 89.3, 'N', 'Ghost', 'Poison', 'Levitate'),
('Geodude', 74, '1''04"', 44.1, 'Y', 'Rock', 'Ground', 'Rock Head/Sturdy'),
('Gloom', 44, '2''07"', 19.0, 'Y', 'Grass', 'Poison', 'Chlorophyll'),
('Golbat', 42, '5''03"', 121.3, 'Y', 'Poison', 'Flying', 'Inner Focus'),
('Goldeen', 118, '2''00"', 33.1, 'Y', 'Water', 'None', 'Swift Swim/Water Veil'),
('Golduck', 55, '5''07"', 168.9, 'N', 'Water', 'None', 'Damp/Cloud Nine'),
('Golem', 76, '4''07"', 661.4, 'N', 'Rock', 'Ground', 'Rock Head/Sturdy'),
('Graveler', 75, '3''03"', 231.5, 'Y', 'Rock', 'Ground', 'Rock Head/Sturdy'),
('Grimer', 88, '2''11"', 66.1, 'Y', 'Poison', 'None', 'Stench/Sticky Hold'),
('Growlithe', 58, '2''04"', 41.9, 'Y', 'Fire', 'None', 'Intimidate/Flash Fire'),
('Gyarados', 130, '21''04"', 518.1, 'N', 'Water', 'Flying', 'Intimidate'),
('Haunter', 93, '5''03"', 0.2, 'Y', 'Ghost', 'Poison', 'Levitate'),
('Hitmonchan', 107, '4''07"', 110.7, 'N', 'Fighting', 'None', 'Keen Eye'),
('Hitmonlee', 106, '4''11"', 109.8, 'N', 'Fighting', 'None', 'Limber'),
('Horsea', 116, '1''04"', 17.6, 'Y', 'Water', 'None', 'Swift Swim'),
('Hypno', 97, '5''03"', 166.7, 'N', 'Psychic', 'None', 'Insomnia'),
('Ivysaur', 2, '3''03"', 28.7, 'Y', 'Grass', 'Poison', 'Overgrow'),
('Jigglypuff', 39, '1''08"', 12.1, 'Y', 'Normal', 'None', 'Cute Charm'),
('Jolteon', 135, '2''07"', 54.0, 'N', 'Electric', 'None', 'Volt Absorb'),
('Jynx', 124, '4''07"', 89.5, 'N', 'Ice', 'Psychic', 'Oblivious'),
('Kabuto', 140, '1''08"', 25.4, 'Y', 'Rock', 'Water', 'Swift Swim/Battle Armor'),
('Kabutops', 141, '4''03"', 89.3, 'N', 'Rock', 'Water', 'Swift Swim/Battle Armor'),
('Kadabra', 64, '4''03"', 124.6, 'Y', 'Psychic', 'None', 'Synchronize/Inner Focus'),
('Kakuna', 14, '2''00"', 22.0, 'Y', 'Bug', 'Poison', 'Shed Skin'),
('Kangaskhan', 115, '7''03"', 176.4, 'N', 'Normal', 'None', 'Early Bird'),
('Kingler', 99, '4''03"', 132.3, 'N', 'Water', 'None', 'Hyper Cutter/Shell Armor'),
('Koffing', 109, '2''00"', 2.2, 'Y', 'Poison', 'None', 'Levitate'),
('Krabby', 98, '1''04"', 14.3, 'Y', 'Water', 'None', 'Hyper Cutter/Shell Armor'),
('Lapras', 131, '8''02"', 485.0, 'N', 'Water', 'Ice', 'Water Absorb/Shell Armor'),
('Lickitung', 108, '3''11"', 144.4, 'N', 'Normal', 'None', 'Oblivious/Own Tempo'),
('Machamp', 68, '5''03"', 286.6, 'N', 'Fighting', 'None', 'Guts'),
('Machoke', 67, '4''11"', 155.4, 'Y', 'Fighting', 'None', 'Guts'),
('Machop', 66, '2''07"', 43.0, 'Y', 'Fighting', 'None', 'Guts'),
('Magikarp', 129, '2''11"', 22.0, 'Y', 'Water', 'None', 'Swift Swim'),
('Magmar', 126, '4''03"', 98.1, 'N', 'Fire', 'None', 'Flame Body'),
('Magnemite', 81, '1''00"', 13.2, 'Y', 'Electric', 'Steel', 'Magnet Pull/Sturdy'),
('Magneton', 82, '3''03"', 132.3, 'N', 'Electric', 'Steel', 'Magnet Pull/Sturdy'),
('Mankey', 56, '1''08"', 61.7, 'Y', 'Fighting', 'None', 'Vital Spirit'),
('Marowak', 105, '3''03"', 99.2, 'N', 'Ground', 'None', 'Rock Head/Lightning '),
('Meowth', 52, '1''04"', 9.3, 'Y', 'Normal', 'None', 'PickUp'),
('Metapod', 11, '2''04"', 21.8, 'Y', 'Bug', 'None', 'Shed Skin'),
('Mew', 151, '1''04"', 8.8, 'N', 'Psychic', 'None', 'Synchronize'),
('Mewtwo', 150, '6''07"', 269.0, 'N', 'Psychic', 'None', 'Pressure'),
('Moltres', 146, '6''07"', 132.3, 'N', 'Fire', 'Flying', 'Pressure'),
('Mr. Mime', 122, '4''03"', 120.2, 'N', 'Psychic', 'None', 'Soundproof'),
('Muk', 89, '3''11"', 66.1, 'N', 'Poison', 'None', 'Stench/Sticky Hold'),
('Nidoking', 34, '4''07"', 136.7, 'N', 'Poison', 'Ground', 'Poison Point'),
('Nidoqueen', 31, '4''03"', 132.3, 'N', 'Poison', 'Ground', 'Poison Point'),
('NidoranF', 29, '1''04"', 15.4, 'Y', 'Poison', 'None', 'Poison Point'),
('NidoranM', 32, '1''08"', 19.8, 'Y', 'Poison', 'None', 'Poison Point'),
('Nidorina', 30, '2''07"', 44.1, 'Y', 'Poison', 'None', 'Poison Point'),
('Nidorino', 33, '2''11"', 43.0, 'Y', 'Poison', 'None', 'Poison Point'),
('Ninetales', 38, '3''07"', 43.9, 'N', 'Fire', 'None', 'Flash Fire'),
('Oddish', 43, '1''08"', 11.9, 'Y', 'Grass', 'Poison', 'Chlorophyll'),
('Omanyte', 138, '1''04"', 16.5, 'Y', 'Rock', 'Water', 'Swift Swim/Shell Arm'),
('Omastar', 139, '3''03"', 77.2, 'N', 'Rock', 'Water', 'Swift Swim/Shell Arm'),
('Onix', 95, '28''10"', 463.0, 'Y', 'Rock', 'Ground', 'Rock Head/Sturdy'),
('Paras', 46, '1''00"', 11.9, 'Y', 'Bug', 'Grass', 'Effect Spore'),
('Parasect', 47, '3''03"', 65.0, 'N', 'Bug', 'Grass', 'Effect Spore'),
('Persian', 53, '3''03"', 70.5, 'N', 'Normal', 'None', 'Limber'),
('Pidgeot', 18, '4''11"', 87.1, 'N', 'Normal', 'Flying', 'Keen Eye'),
('Pidgeotto', 17, '3''07"', 66.1, 'Y', 'Normal', 'Flying', 'Keen Eye'),
('Pidgey', 16, '1''00"', 4.0, 'Y', 'Normal', 'Flying', 'Keen Eye'),
('Pikachu', 25, '1''04"', 13.2, 'Y', 'Electric', 'None', 'Static'),
('Pinsir', 127, '4''11"', 121.3, 'N', 'Bug', 'None', 'Hyper Cutter'),
('Poliwag', 60, '2''00"', 27.3, 'Y', 'Water', 'None', 'Damp/Water Absorb'),
('Poliwhirl', 61, '3''03"', 44.1, 'Y', 'Water', 'None', 'Damp/Water Absorb'),
('Poliwrath', 62, '4''03"', 119.0, 'N', 'Water', 'Fighting', 'Damp/Water Absorb'),
('Ponyta', 77, '3''03"', 66.1, 'Y', 'Fire', 'None', 'Run Away/Flash Fire'),
('Porygon', 137, '2''07"', 80.5, 'Y', 'Normal', 'None', 'Trace'),
('Primeape', 57, '3''03"', 70.5, 'N', 'Fighting', 'None', 'Vital Spirit'),
('Psyduck', 54, '2''07"', 43.2, 'Y', 'Water', 'None', 'Damp/Cloud Nine'),
('Raichu', 26, '2''07"', 66.1, 'N', 'Electric', 'None', 'Static'),
('Rapidash', 78, '5''07"', 209.4, 'N', 'Fire', 'None', 'Run Away/Flash Fire'),
('Raticate', 20, '2''04"', 40.8, 'N', 'Normal', 'None', 'Run Away/Guts'),
('Rattata', 19, '1''00"', 7.7, 'Y', 'Normal', 'None', 'Run Away/Guts'),
('Rhydon', 112, '6''03"', 264.6, 'N', 'Rock', 'Ground', 'Rock Head/Lightning '),
('Rhyhorn', 111, '3''03"', 253.5, 'Y', 'Rock', 'Ground', 'Rock Head/Lightning '),
('Sandshrew', 27, '2''00"', 26.5, 'Y', 'Ground', 'None', 'Sand Veil'),
('Sandslash', 28, '3''03"', 65.0, 'N', 'Ground', 'None', 'Sand Veil'),
('Scyther', 123, '4''11"', 123.5, 'Y', 'Bug', 'Flying', 'Swarm'),
('Seadra', 117, '3''11"', 55.1, 'Y', 'Water', 'None', 'Poison Point'),
('Seaking', 119, '4''03"', 86.0, 'N', 'Water', 'None', 'Swift Swim/Water Veil'),
('Seel', 86, '3''07"', 198.4, 'Y', 'Water', 'None', 'Thick Fat'),
('Shellder', 90, '1''00"', 8.8, 'Y', 'Water', 'None', 'Shell Armor'),
('Slowbro', 80, '5''03"', 173.1, 'N', 'Water', 'Psychic', 'Oblivious/Own Tempo'),
('Slowpoke', 79, '3''11"', 79.4, 'Y', 'Water', 'None', 'Oblivious/Own Tempo'),
('Snorlax', 143, '6''11"', 1014.1, 'N', 'Normal', 'None', 'Immunity & Thick Fat'),
('Spearow', 21, '1''00"', 4.4, 'Y', 'Normal', 'Flying', 'Keen Eye'),
('Squirtle', 7, ' 1''08"', 19.8, 'Y', 'Water', 'None', 'Torrent'),
('Starmie', 121, '3''07"', 176.4, 'N', 'Water', 'None', 'Illuminate/Natural Cure'),
('Staryu', 120, '2''07"', 76.1, 'Y', 'Water', 'None', 'Illuminate/Natural Cure'),
('Tangela', 114, '3''03"', 77.2, 'N', 'Grass', 'None', 'Chlorophyll'),
('Tauros', 128, '4''07"', 194.9, 'N', 'Normal', 'None', 'Intimidate'),
('Tentacool', 72, '2''11"', 100.3, 'Y', 'Water', 'Poison', 'Clear Body/Liquid Ooze'),
('Tentacruel', 73, '5''03"', 121.3, 'N', 'Water', 'Poison', 'Clear Body/Liquid Ooze'),
('Vaporeon', 134, '3''03"', 63.9, 'N', 'Water', 'None', 'Water Absorb'),
('Venomoth', 49, '4''11"', 27.6, 'N', 'Bug', 'Poison', 'Shield Dust'),
('Venonat', 48, '3''03"', 66.1, 'Y', 'Bug', 'Poison', 'Compound Eyes'),
('Venusaur', 3, '6''07"', 221.0, 'N', 'Grass', 'Poison', 'Overgrow'),
('Victreebel', 71, '5''07"', 34.2, 'N', 'Grass', 'Poison', 'Chlorophyll'),
('Vileplume', 45, '3''11"', 41.0, 'N', 'Grass', 'Poison', 'Chlorophyll'),
('Voltorb', 100, '1''08"', 22.9, 'Y', 'Electric', 'None', 'Soundproof/Static'),
('Vulpix', 37, '2''00"', 21.8, 'Y', 'Fire', 'None', 'Flash Fire'),
('Wartortle', 8, '3''03"', 49.6, 'Y', 'Water', 'None', 'Torrent'),
('Weedle', 13, ' 1''00"', 7.1, 'Y', 'Bug', 'Poison', 'Shield Dust'),
('Weepinbell', 70, '3''03"', 14.1, 'Y', 'Grass', 'Poison', 'Chlorophyll'),
('Weezing', 110, '3''11"', 20.9, 'N', 'Poison', 'None', 'Levitate'),
('Wigglytuff', 40, '3''03"', 26.5, 'N', 'Normal', 'None', 'Cute Charm'),
('Zapdos', 145, '5''03"', 116.0, 'N', 'Electric', 'Flying', 'Pressure'),
('Zubat', 41, ' 2''07"', 16.5, 'Y', 'Poison', 'Flying', 'Inner Focus');

-- --------------------------------------------------------

--
-- Table structure for table `type_effectiveness`
--

CREATE TABLE IF NOT EXISTS `type_effectiveness` (
  `Type` varchar(10) NOT NULL DEFAULT '',
  `Normal` varchar(15) NOT NULL,
  `Fire` varchar(15) NOT NULL,
  `Water` varchar(15) NOT NULL,
  `Electric` varchar(15) NOT NULL,
  `Grass` varchar(15) NOT NULL,
  `Ice` varchar(15) NOT NULL,
  `Fighting` varchar(15) NOT NULL,
  `Poison` varchar(15) NOT NULL,
  `Ground` varchar(15) NOT NULL,
  `Flying` varchar(15) NOT NULL,
  `Psychic` varchar(15) NOT NULL,
  `Bug` varchar(15) NOT NULL,
  `Rock` varchar(15) NOT NULL,
  `Ghost` varchar(15) NOT NULL,
  `Dragon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type_effectiveness`
--

INSERT INTO `type_effectiveness` (`Type`, `Normal`, `Fire`, `Water`, `Electric`, `Grass`, `Ice`, `Fighting`, `Poison`, `Ground`, `Flying`, `Psychic`, `Bug`, `Rock`, `Ghost`, `Dragon`) VALUES
('Bug', '1', '.5', '1', '1', '2', '1', '.5', '1', '1', '1', '1', '1', '.5', '1', '1'),
('Dragon', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '.5', '1', '2'),
('Electric', '1', '1', '2', '.5', '.5', '1', '1', '1', '0', '2', '1', '1', '1', '1', '.5'),
('Fighting', '2', '1', '1', '1', '1', '2', '1', '.5', '1', '.5', '.5', '.5', '2', '0', '1'),
('Fire', '1', '.5', '.5', '1', '2', '2', '1', '1', '1', '1', '1', '2', '.5', '1', '.5'),
('Flying', '1', '1', '1', '.5', '2', '1', '2', '1', '1', '1', '1', '2', '.5', '1', '1'),
('Ghost', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '.5', '2', '1'),
('Grass', '1', '.5', '2', '1', '.5', '1', '1', '.5', '2', '.5', '1', '.5', '2', '1', '.5'),
('Ground', '1', '2', '1', '2', '.5', '1', '1', '2', '1', '0', '1', '.5', '2', '1', '1'),
('Ice', '1', '1', '.5', '1', '2', '.5', '1', '1', '2', '2', '1', '1', '1', '1', '2'),
('Normal', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '.5', '0', '1'),
('Poison', '1', '1', '1', '1', '2', '1', '1', '.5', '.5', '1', '1', '2', '.5', '.5', '1'),
('Psychic', '1', '1', '1', '1', '1', '1', '2', '2', '1', '1', '1', '.5', '1', '1', '1'),
('Rock', '1', '2', '1', '1', '1', '2', '.5', '1', '.5', '2', '1', '2', '1', '1', '1'),
('Water', '1', '2', '.5', '1', '.5', '1', '1', '1', '2', '1', '1', '1', '2', '1', '.5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abilities`
--
ALTER TABLE `abilities`
 ADD PRIMARY KEY (`Ability`);

--
-- Indexes for table `can_learn_hm`
--
ALTER TABLE `can_learn_hm`
 ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `pokemon`
--
ALTER TABLE `pokemon`
 ADD PRIMARY KEY (`Name`), ADD FULLTEXT KEY `Ability` (`Ability`);

--
-- Indexes for table `type_effectiveness`
--
ALTER TABLE `type_effectiveness`
 ADD PRIMARY KEY (`Type`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
