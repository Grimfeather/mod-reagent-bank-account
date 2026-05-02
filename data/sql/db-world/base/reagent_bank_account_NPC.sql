SET
@Entry = 190012,
@Name = "Ling";

DELETE FROM `creature_template` WHERE `entry` = @Entry;
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `rank`, `dmgschool`, `baseattacktime`, `rangeattacktime`, 
`unit_class`, `unit_flags`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `AIName`, `MovementType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `flags_extra`, `ScriptName`) VALUES
(@Entry, @Name, 'Reagent Banker', NULL, 0, 6, 6, 0, 35, 1, 0, 0, 2000, 0, 1, 0, 7, 138412032, 0, 0, 0, '', 0, 1, 0, 0, 1, 2, 'npc_reagent_banker_account');

DELETE FROM `creature_template_model` WHERE `CreatureID` = @Entry;
INSERT INTO `creature_template_model` (`CreatureID`, `CreatureDisplayID`, `Probability`, `VerifiedBuild`) VALUES
(@Entry, 15965, 1, 0);
