{* DO NOT EDIT THIS FILE! Use an override template instead. *}
{def $style=''|soe_styles('block')
	$classes=''|soe_classes('block')}
{if and(is_unset($#use_inline_styles), is_unset($use_inline_styles))}
{if layout_line_start()|eq(true())}<div class="line">{/if}
	<div class="unit size{$size}{if $last|eq('true')} lastUnit{/if}{if $classes|trim|ne('')} {$classes|wash}{/if}"{if $style|trim|ne('')} style="{$style}"{/if}>{$content}</div>
	{if $last|eq('true')}{if layout_line_end()|eq(true)}</div>{/if}{/if}
{else}
	{if layout_line_start()|eq(true())}<table border="0" cellpaddding="0" cellspacing="0" width="100%"><tr>{/if}
	{def $width=""}
	{if $last|ne('true')}
		{switch match=$size}
			{case match="1of2"}{set $width="50%"}{/case}
			{case match="1of3"}{set $width="33.333%"}{/case}
			{case match="2of3"}{set $width="66.666%"}{/case}
			{case match="1of4"}{set $width="25%"}{/case}
			{case match="2of4"}{set $width="50%"}{/case}
			{case match="3of4"}{set $width="75%"}{/case}
			{case match="1of5"}{set $width="20%"}{/case}
			{case match="2of5"}{set $width="40%"}{/case}
			{case match="3of5"}{set $width="60%"}{/case}
			{case match="4of5"}{set $width="80%"}{/case}
			{case}{/case}
		{/switch}
	{/if}
	<td width="{$width}" class="unit-table{if $last|eq('true')} lastUnit-table{/if}{if $classes|trim|ne('')} {$classes|wash}{/if}"{if $style|trim|ne('')} style="{$style}"{/if} valign="top">{$content}</td>
	{if $last|eq('true')}{if layout_line_end()|eq(true)}</tr></table>{/if}{/if}
{/if}