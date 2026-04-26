<div class="cms-mobile-menu-toggle-wrapper"></div>

<div class="fill-height cms-menu" id="cms-menu" data-layout-type="border" aria-expanded="false">
	<div class="cms-menu__header">
		<% include SilverStripe\\Admin\\LeftAndMain_MenuLogo %>
		<% include SilverStripe\\Admin\\LeftAndMain_MenuStatus %>
	</div>

	<div class="flexbox-area-grow panel--scrollable panel--triple-toolbar cms-panel-content">
		<% include SilverStripe\\Admin\\LeftAndMain_MenuList %>
	</div>

  <!-- Activate show_cms_info: true in LeftAndMain config to display CMS info button -->
	<% if $ShowCMSInfo %>
    <div class="toolbar toolbar--south cms-panel-toggle">
      <% include SilverStripe\\Admin\\LeftAndMain_MenuToggle %>
    </div>
	<% end_if %>
</div>

<button class="fill-height fill-width cms-menu-mobile-overlay" aria-controls="cms-menu" aria-expanded="false"></button>
