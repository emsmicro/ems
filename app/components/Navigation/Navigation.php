<?php

/**
 * Navigation
 *
 * @author Jan Marek
 * @license MIT
 */

namespace Navigation;

use Nette\Application\UI\Control;


class Navigation extends Control
{
	
	/** @var NavigationNode */
	private $homepage;

	/** @var NavigationNode */
	private $current;

	/** @var bool */
	private $useHomepage = false;



	/**
	 * Set node as current
	 * @param NavigationNode $node
	 */
	public function setCurrent(NavigationNode $node)
	{
		if (isset($this->current)) {
			$this->current->isCurrent = false;
		}
		$node->isCurrent = true;
		$this->current = $node;
	}

	/**
	 * Set node as main
	 * @param NavigationNode $node
	 */
	public function setMain(NavigationNode $node)
	{
		$node->isMain = true;
		$this->current = $node;
	}

	/**
	 * Set node as hidden
	 * @param NavigationNode $node
	 */
	public function setHidden(NavigationNode $node)
	{
		$node->isHidden = true;
	}


	/**
	 * Add navigation node as a child
	 * @param string $label
	 * @param string $url
	 * @param string $url
	 * @return NavigationNode
	 */
	public function add($label, $url, $tag='', $isMain=true, $isHidden=false)
	{
		return $this->getComponent("homepage")->add($label, $url, $tag, $isMain, $isHidden);
	}



	/**
	 * Setup homepage
	 * @param string $label
	 * @param string $url
	 * @return Navigation
	 */
	public function setupHomepage($label, $url, $tag='', $isMain = true, $isHidden=false)
	{
		$homepage = $this->getComponent("homepage");
		$homepage->label = $label;
		$homepage->url = $url;
		$homepage->tag = $tag;
		$homepage->isMain = true;
		$homepage->isHidden = false;
		$this->useHomepage = true;
		return $homepage;
	}



	/**
	 * Homepage factory
	 * @param string $name
	 */
	protected function createComponentHomepage($name)
	{
		new NavigationNode($this, $name);
	}



	/**
	 * Render menu
	 * @param bool $renderChildren
	 * @param NavigationNode $base
	 * @param bool $renderHomepage
	 */
	public function renderMenu($renderChildren = TRUE, $base = NULL, $renderHomepage = TRUE)
	{
		$template = $this->createTemplate()
			->setFile(dirname(__FILE__) . "/menu.latte");
		$template->homepage = $base ? $base : $this->getComponent("homepage");
		$template->useHomepage = $this->useHomepage && $renderHomepage;
		$template->renderChildren = $renderChildren;
		$template->children = $this->getComponent("homepage")->getComponents();
		$template->render();
	}


	
	/**
	 * Render full menu
	 */
	public function render()
	{
		$this->renderMenu();
	}



	/**
	 * Render main menu
	 */
	public function renderMainMenu()
	{
		$this->renderMenu(FALSE);
	}



	/**
	 * Render breadcrumbs
	 */
	public function renderBreadcrumbs()
	{
		if (empty($this->current)) {
			return;
		}

		$items = array();
		$node = $this->current;

		while ($node instanceof NavigationNode) {
			$parent = $node->getParent();
			if (!$this->useHomepage && !($parent instanceof NavigationNode)) {
				break;
			}

			array_unshift($items, $node);
			$node = $parent;
		}

		$template = $this->createTemplate()
			->setFile(dirname(__FILE__) . "/breadcrumbs.latte");
		
		$template->items = $items;
		$template->render();
	}
}
