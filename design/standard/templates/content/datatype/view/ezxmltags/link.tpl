{* DO NOT EDIT THIS FILE! Use an override template instead. 
*}{def $style=''|soe_styles('link')
	   $classes=''|soe_classes('link')}{*
*}{if $href|begins_with('content/view/PDF - ')}{*
	*}{set $href=concat('layout/set/pdf/', wrap_php_func('str_replace', array('PDF - ', '', $href) ) )}{*
*}{/if}{*
*}{set $href=$href|ezurl(no)}{*
*}{if and(is_set($#host_path), $href|begins_with('/'))}{set $href=concat($#host_path, $href)}{/if}{*
*}<a href="{$href}"{if $id} id="{$id}"{/if}{if $title} title="{$title}"{/if}{if $target} target="{$target}"{/if}{if $classes|trim|ne('')} class="{$classes|wash}"{/if}{if and(is_set( $hreflang ), $hreflang)} hreflang="{$hreflang|wash}"{/if}{if $style|trim|ne('')} style="{$style}"{/if}>{$content}</a>