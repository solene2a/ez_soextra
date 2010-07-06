{* DO NOT EDIT THIS FILE! Use an override template instead. *}
{def $style=''|soe_styles('htmlcode')
     $inner_style=''|soe_styles('htmlcode_inner')
	 $classes=''|soe_classes('htmlcode')}
<div class="{$classes|wash}"{if $style|trim|ne('') style="{$style}"{/if}>
{if or( is_unset($display_inline), $display_inline|eq('') )}
	<div class="htmlcode-wrapper" style="{$inner_style}">
{/if}
{def $display=$htmlcontent|js_unescape}
{if and( is_set($attr_width), $attr_width|ne('') )}
	{set $display = $display|preg_replace( '/width="(\d+)"/i', concat('width="', $attr_width, '"') ) }
{/if}
{if and( is_set($attr_height), $attr_height|ne('') )}
	{set $display = $display|preg_replace( '/height="(\d+)"/i', concat('height="', $attr_height, '"') ) }
{/if}
{$display}
{if or( is_unset($display_inline), $display_inline|eq('') )}
	</div>
{/if}
</div>