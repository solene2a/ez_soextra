{* DO NOT EDIT THIS FILE! Use an override template instead. 
*}{def $style=''|soe_styles('emphasize')
	   $classes=''|soe_classes('emphasize')}{*
*}<i{if $classes|trim|ne('')} class="{$classes|wash}"{/if}{if $style|trim|ne('')} style="{$style}"{/if}>{$content}</i>