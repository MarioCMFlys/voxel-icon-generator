generateEgg () {
#  convert \
#   \( icons/spawn_egg.png -fill "$2" -colorize 60% -compose over \) \
#   \( icons/spawn_egg_overlay.png -fill "$3" -colorize 75% \) \
#   -gravity center -composite icons/${1}_spawn_egg.png
  echo "Generating egg $1"
  convert \
   \( icons/spawn_egg.png \( +clone -fill "$2" -colorize 100% \) -compose multiply -composite \) \
   \( icons/spawn_egg_overlay.png \( +clone  -fill "$3" -colorize 100% \) -compose multiply -composite \) \
   -composite icons/${1}_spawn_egg.png
}

# generateEgg '' '#' '#'
generateEgg 'bat' '#493e32' '#151515'
generateEgg 'blaze' '#e4aa0e' '#dcd96e'
generateEgg 'cave_spider' '#1a414b' '#8c1618'
generateEgg 'chicken' '#7f644d' '#989898'
generateEgg 'cat' '#dfbe86' '#7f644d'
generateEgg 'cod' '#b49e65' '#c4ab78'
generateEgg 'cow' '#413729' '#8b8b8b'
generateEgg 'creeper' '#329e04' '#000000'
generateEgg 'dolphin' '#273a4a' '#d8d8d8'
generateEgg 'donkey' '#4f4339' '#73665a'
generateEgg 'drowned' '#90e5ca' '#6b8858'
generateEgg 'elder_guardian' '#c1c0af' '#65667f'
generateEgg 'enderman' '#1b1b1b' '#000000'
generateEgg 'endermite' '#1b1b1b' '#606060'
generateEgg 'evoker' '#8c9292' '#201e1d'
generateEgg 'fox' '#597a6b' '#ac5d24'
generateEgg 'ghast' '#ebebeb' '#a3a3a3'
generateEgg 'guardian' '#597a6b' '#cb6e31'
generateEgg 'horse' '#b29577' '#cdc800'
generateEgg 'husk' '#726a5c' '#c5b280'
generateEgg 'llama' '#b29577' '#81543b'
generateEgg 'magma_cube' '#330101' '#d9dc00'
generateEgg 'mooshroom' '#91171a' '#9e9e9e'
generateEgg 'mule' '#1f0301' '#46301f'
generateEgg 'ocelot' '#e1d476' '#4b3e31'
generateEgg 'panda' '#dadada' '#1e1e23'
generateEgg 'parrot' '#329e04' '#d50916'
generateEgg 'phantom' '#444c82' '#80df00'
generateEgg 'pig' '#df9c99' '#b85755'
generateEgg 'pillager' '#4e3136' '#818686'
generateEgg 'polar_bear' '#e5e5e5' '#81817c'
generateEgg 'pufferfish' '#e4aa0e' '#46a7d2'
generateEgg 'rabbit' '#8c5b40' '#62422f'
generateEgg 'ravager' '#6e6e6a' '#4f4842'
generateEgg 'salmon' '#91171a' '#227365'
generateEgg 'sheep' '#dadada' '#d99d9d'
generateEgg 'shulker' '#88618b' '#443449'
generateEgg 'silverfish' '#686868' '#2e2e2e'
generateEgg 'skeleton' '#b6b6b6' '#424242'
generateEgg 'skeleton_horse' '#63634c' '#c6c6bb'
generateEgg 'slime' '#579a3d' '#557a47'
generateEgg 'spider' '#342e2a' '#821516'
generateEgg 'squid' '#273a4a' '#637584'
generateEgg 'stray' '#5e6f70' '#c0cbcb'
generateEgg 'trader_llama' '#d99c34' '#415482'
generateEgg 'tropical_fish' '#dc6621' '#ddd8cf'
generateEgg 'turtle' '#dadada' '#2f9696'
generateEgg 'vex' '#75879a' '#c9cdd1'
generateEgg 'villager' '#503b34' '#a07963'
generateEgg 'vindicator' '#8b9090' '#2c5355'
generateEgg 'wandering_trader' '#465b8c' '#c78f30'
generateEgg 'witch' '#310101' '#487e34'
generateEgg 'wither_skeleton' '#181818' '#3b3f3f'
generateEgg 'wolf' '#cecaca' '#b09781'
generateEgg 'zombie' '#2be5bb' '#617d51'
generateEgg 'zombie_horse' '#345034' '#617d51'
generateEgg 'zombie_pigman' '#d48889' '#617d51'
generateEgg 'zombie_villager' '#513c34' '#617d51'
