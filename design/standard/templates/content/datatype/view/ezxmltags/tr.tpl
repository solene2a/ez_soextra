{* DO NOT EDIT THIS FILE! Use an override template instead. *}
{def $style=''|soe_styles('tr')
     $classes=''|soe_classes('tr')}
<tr{if or($classes|trim|ne(''), $row_count|gt( 0 )) } class="{if $classes|trim|ne('')}{$classes|wash}{/if} {if $row_count|gt( 0 )}{if mod( $row_count, 2 )}odd{else}even{/if}{/if}"{/if}{if $style|trim|ne('')} style="{$style}"{/if}>{$content}</tr>