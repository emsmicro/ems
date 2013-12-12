<?php

/*
 * Sprava presenter
 */

class SpravaPresenter extends SecuredPresenter
{
	/**
	 * @var array
	 * @navigace
	 */
	private $navigace;
	/** Title constants */
    const TITUL_DEFAULT = 'Stránka správy';
    const TITUL_SUBTITL = 'Přehled funkcí';
	private $todos	= array(
							'Uživatelé'	=> array(
											'Přehled uživatelů systému.'=> 'Uzivatel:default',
											'Přidání nového uživatele.'=> 'Uzivatel:add',
											'Přidělení rolí uživatelům.'=> ''
												),
							'Místa'		=> array(
											'Přehled číselníků míst.'=>'Misto:default',
											'Přidání nového státu.'=>'Misto:adds',
											'Přidání nového kraje.'=>'Misto:addk',
											'Přidání nové obce.'=>'Misto:addo',
											),
							'Číselníky'	=> array(
											'Přehled číselníků systému.'=>'Ciselnik:default',
											),
							);


	public function startup()
	{
		parent::startup();
		$section = $this->context->session->getSection('mySetting');
		$this->template->afirma = $section->firma;
	    $menu = array(
	            'Správa'	=> 'Sprava',
	            'Uživatelé'	=> 'Uzivatel',
				'Práva'		=> 'Prava',
				'Agendy'	=> 'Agenda',
				'Tarify'	=> 'SetTarifu',
	            'Místa'		=> 'Misto',
				'Číselníky'	=> 'Ciselnik',
				'Query'		=> 'Query',
	            'Obchod'	=> 'Obchod',  //další moduly zařadit až na konec menu
	            'TPV'		=> 'Tpv',
	            'Nákup'		=> 'Nakup'
		        );
        $this->navigace = $menu;
	}
	
	/**
	 * @return void
	 */
	public function renderDefault()
	{
        $this->template->titul = self::TITUL_DEFAULT;
        $this->template->subtitle = self::TITUL_SUBTITL;
		$this->template->is_todo = $this->is_todo;
		if($this->is_todo){$this->template->todos = $this->todos;}
	}


	/**
	 * Vytváří vrchní navigační panel
	 * @param array
	*/
	protected function createComponentNavigation($name) {
		$this->MakeMenu($name, $this->navigace);
	}

}
