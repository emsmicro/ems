<?php

use Nette\Application\UI\Form,
	Nette\Application as NA;


class ProduktPresenter extends ObchodPresenter
{
    /** Title constants */
    const TITUL_DEFAULT = 'Produkty';
    const TITUL_ADD 	= 'Nový produkt';
    const TITUL_EDIT 	= 'Změna produktu';
    const TITUL_DELETE 	= 'Smazání produktu';
    /*
	 * @var string
	 * @titul
	 */  
	private $titul;
	
	/** @var Nette\Database\Table\Selection */
	private $items;
	
	private $idp=0;
	private $idn=0;
	

	public function startup()
	{
		parent::startup();
        $instance = new Produkt;
		$this->items = $instance->show();
		$this->template->company = 'Zákazník: ' . $this->getNameFromMySet(1);
		$this->template->subtitle = 'Produkt: ' . $this->getNameFromMySet(4);

	}


	/********************* view default *********************/

	/**
	 * list of Products
	 * @return void
	 */
	public function renderDefault()
	{

		// User filter
		$ufilter = $this['uFilter'];
		$gfil= $ufilter->getFilter();
		$this->template->is_filter = TRUE;
		
        $instance = new Produkt;
		$this->template->items = $instance->show($gfil);
        $this->template->titul = self::TITUL_DEFAULT;
		$this->template->inabidka = $this->getIdFromMySet(3);

	}
	
	/**
	 * list of company Product for id_firmy
	 * @param int id=id_firmy
	 * @return void
	 */
	public function renderProduct($id)
	{
        $instance = new Produkt;
		$this->template->items = $instance->showProduct($id);
        $this->template->titul = "Produkty - ".$this->getNameFromMySet(1);
	}
	
	/********************* views detail *********************/
	/**
	 * View product detail
	 * @param int
	 * @return void
	 */	
	public function renderDetail($id = 0)
	{
        $instance = new Produkt;
		$item = $instance->find($id)->fetch();
		if(!$item){$this->redirect('default');}
		$this->setIntoMySet(4, $id);

		$this->template->item = $item;
	   	$this->template->titul = $item->nazev;
		$this->template->idp = $item->id;
		$this->idp = $item->id;	
		$this->idn = $item->idn;
		$this->template->inabidka = $this->idn;
		
		$costs = $instance->costs($id);
		$isnaklady = count($costs)>0;
        $this->template->isnaklady = $isnaklady;
		$this->template->costs = $costs;

		$prices = $instance->prices($id, $this->idn);
		$isceny = count($prices)>0;
        $this->template->isceny = $isceny;
        $this->template->prices = $prices;
		
		$aval = $instance->calcAddedValue($id, $this->idn);
		$this->template->aval = $aval;
		$hist = $instance->getProductHistory($id);
		$this->template->history = $hist;
		$poc = new Pocet;
        $pocet = $poc->show($id)->fetchAll();
        $this->template->pocet = $pocet;

		$data_bar = $instance->getProdPrice4BarGraph($id);
		$this->template->data_bar = $data_bar;

	}

	/**
	 * make PDF file detail of Product
	 * @param type $id 
	 */
	 function actionToPdf($id = 0) {

        $template = $this->createTemplate()->setFile($this->context->params['appDir'] . "/modules/Obchod/templates/Produkt/toPdf.latte");

		$instance = new Produkt;
		$item = $instance->find($id)->fetch();

		$template->item = $item;
	   	$template->titul = $item->nazev;
		$template->idp = $item->id;
		$template->inabidka = $this->getIdFromMySet(3);
		$costs = $instance->costs($id);
		if (count($costs)==0) {$costs = false;}
        $template->costs = $costs;
		$prices = $instance->prices($id, $item->idn);
        $template->prices = $prices;
		$poc = new Pocet;
        $pocet = $poc->show($id);
        $template->pocet = $pocet;

        $pdf = new PDFResponse($template);

        // Všechny tyto konfigurace jsou nepovinné:

//        // Orientace stránky
//        $pdf->pageOrientaion = PDFResponse::ORIENTATION_LANDSCAPE;
//        // Formát stránky
//        $pdf->pageFormat = "A0";
//        // Okraje stránky
//        $pdf->pageMargins = "100,0,100,0,20,60";
//
//        // Způsob zobrazení PDF
//        $pdf->displayLayout = "continuous";
//        // Velikost zobrazení
//        $pdf->displayZoom = "fullwidth";
//
//        // Název dokumentu
        $pdf->documentTitle = "Produkt: $template->titul";
//        // Dokument vytvořil:
        $pdf->documentAuthor = "Mikroelektronika spol. s r. o.";
//
//        // Callback - těsně před odesláním výstupu do prohlížeče
//        //$pdfRes->onBeforeComplete[] = "test";
//
//        $pdf->mPDF->IncludeJS("app.alert('This is alert box created by JavaScript in this PDF file!',3);");
//        $pdf->mPDF->IncludeJS("app.alert('Now opening print dialog',1);");


//		header("Content-Type: application/pdf");
//		header("Content-Disposition: inline");
        $pdf->mPDF->OpenPrintDialog();
		//\Nette\Http::getHttpResponse()->setHeader('Content-Disposition', 'inline');

        // Zde končí nepovinná konfigurace

        // Ukončíme presenter -> předáme řízení PDFresponse
        $this->sendResponse($pdf);
    }
	
	/**
	 * empty method - only for ACL permissions
	 */
	public function actionViewCosts(){
		//empty method - only for ACL permissions
	}
	
	/**
	 * empty method - only for ACL permissions
	 */
	public function actionViewPrices(){
		//empty method - only for ACL permissions
	}
	
	/********************* views add & edit *********************/


	/**
	 * add new product
	 * @param int idn = id_nabidky
	 * @return void
	 */
	public function renderAdd($id_firmy=0, $idn=0)
	{
		if($id_firmy>0){
			$this['itemForm']['id_firmy']->value = $id_firmy;			
		} else {
			$this['itemForm']['id_firmy']->value = $this->getIdFromMySet(1);
		}
		$this['itemForm']['save']->caption = 'Přidat';
        $this->template->titul = self::TITUL_ADD;

	}

	/**
	 * edit existing product
	 * @param int, int id=id_produkt, idn=id_nabidky
	 * @return void
	 * @throws BadRequestException
	 */
	public function renderEdit($id = 0, $idn=0)
	{
		$form = $this['itemForm'];
		if (!$form->isSubmitted()) {
	        $instance = new Produkt;
            $row = $instance->find($id)->fetch();
			if (!$row) {
				throw new NA\BadRequestException('Záznam nenalezen.');
			}
			$form->setDefaults($row);
		} else {
			if ($form->id_firmy==0){$form->id_firmy->value = $this->getIdFromMySet(1);}
		}
		$this->template->titul = self::TITUL_EDIT;

	}

	/**
	 * assign a product to offer
	 * @param int
	 * @return void
	 * @throws BadRequestException
	 */
	public function renderAssign($id = 0)
	{
        $instance = new Produkt;
		$this->template->item = $instance->find($id)->fetch();
		if (!$this->template->item) {
			throw new Nette\Application\BadRequestException('Záznam nenalezen!');
		}
		$this->template->anabidka = $this->getNameFromMySet(3);
		$this->template->titul = "Přiřazení produktu k nabídce";

	}

	/**
	 * unassign product to offer
	 * @param int id = id_produkty
	 * @param in idn = id_nabidky
	 * @return void
	 * @throws BadRequestException
	 */
	public function renderEraseOffer($id=0, $idn=NULL)
	{
		$form = $this['eraseForm'];
        $item = new Produkt;
		$row = $item->find($id)->fetch();
		$this->template->item = $row;
		if (!$this->template->item) {
			throw new Nette\Application\BadRequestException('Záznam nenalezen!');
		}
		$this->template->anabidka = $row->nabidka;
		$this->template->titul = "Zrušení přiřazení produktu k nabídce";

	}


	/********************* view delete *********************/

	/**
	 * delete product from database
	 * @param int id = id_produkty
	 * @return void
	 * @throws BadRequestException
	 */
	public function renderDelete($id = 0)
	{
        $instance = new Produkt;
		$this->template->item = $instance->find($id)->fetch();
		if (!$this->template->item) {
			throw new Nette\Application\BadRequestException('Záznam nenalezen!');
		}
		$this->template->titul = self::TITUL_DELETE;

	}


	/**
	 * Adding amount to product
	 * @param int id = id_produkty
	 * @return void
	 */
	public function renderAddAmount($idp = 0)
	{
		//$this['amountForm']['save']->caption = 'Přidat';
		$this['amountForm']['id_produkty']->value = $idp;
        $this->template->titul = "Plánované množství";
		$this->template->data_bar="";
	}
	
	/**
	 * Edit current amount
	 * @param int id = id_pocty
	 * @param int idp = id_produkty
	 * @return void
	 * @throws BadRequestException
	 */	
	public function renderEditAmount($id, $idp)
	{	
		$amount = new Pocet;
		$this['amountForm']['id_produkty']->value = $idp;
		$form = $this['amountForm'];
		if (!$form->isSubmitted()) {
			
            $row = $amount->find($id)->fetch();
			if (!$row) {
				throw new NA\BadRequestException('Záznam nenalezen.');
			}
			$form->setDefaults($row);
		}
		$this->template->titul = "Změna plánovaného množství";
		$this->template->data_bar="";
	}
	
	/**
	 * Delete current amount
	 * @param int id = id_pocty
	 * @param int idp = id_produkty
	 * @throws BadRequestException
	 */	
	public function renderDeleteAmount($id, $idp)
	{
		$amount = new Pocet;
		$this->template->contact = $amount->find($id)->fetch();
		if (!$this->template->contact) {
			throw new Nette\Application\BadRequestException('Záznam nenalezen!');
		}
		$this->template->titul = "Výmaz plánovaného množství";

	}

	
	/**
	 * Update costs of current product
	 * @param int id = id_produkt
	 * @return void
	 * @throws BadRequestException
	 *	
	public function actionCostsUpd($id)
	{
		$item = new Produkt;
		$this->template->item = $item->find($id)->fetch();
		if (!$this->template->item) {
			throw new Nette\Application\BadRequestException('Záznam nenalezen!');
		}
		$this->template->titul = "Aktualizace nákladů produktu";

	}
	*/

	public function actionCostsUpd($id)
	{
		$instance = new Produkt;
		$item = $instance->find($id)->fetch();
		$result = $instance->costsCalc($id, $item->idsso);
		if(!$result){
			$this->flashMessage('Náklady nebyly aktualizovány. Přiřaďte produkt nabídce.','warning');
		} else {
			$this->flashMessage('Náklady byly úspěšně aktualizovány. Aktualizujte i ceny.');
		}
		$this->redirect('detail', $id);
	}
			
	/**
	 * Update sales prices of current product
	 * @param id = id_produkt
	 * @return void
	 * @throws BadRequestException
	 */	
	public function actionPricesUpd($id)
	{
		if(!$this->isMySet(3)){
			//nelze aktualizovat ceny, není vybrána nabídka
			$this->flashMessage('Ceny nelze aktualizovat, není aktivována žádná nabídka.','exclamation');
			$this->redirect('detail', $id);
		}
		
		$form = $this['pricesUpdForm'];
		if (!$form->isSubmitted()) {
			$item = new Produkt;
			$prod = $item->find($id)->fetch();
			$this->template->item = $prod;
			$form['vzorec']->value = $prod['vzorec'];			
			if (!$this->template->item) {
				throw new Nette\Application\BadRequestException('Záznam nenalezen!');
			}
			$this->template->titul = "Aktualizace cen produktu";
		}


	}
	
	/**
	 * 
	 * @param type $id = id_cena
	 * @throws Nette\Application\BadRequestException
	 */
	
	public function actionPriceRefresh($id)
	{
		if(!$this->isMySet(3)){
			//nelze aktualizovat ceny, není vybrána nabídka
			$this->flashMessage('Ceny nelze aktualizovat, není aktivována žádná nabídka.','exclamation');
			$this->redirect('Nabidky:default');
		}
		
		$item = new Produkt;
		$data = $item->findPrice($id);
		if ($data){
			$id_nabidka = (int) $data['id_nabidky'];
			$id_produkt = (int) $data['id_produkty'];
			$id_set_sazeb = (int) $data['id_set_sazeb'];
			$id_meny = (int) $data['id_meny'];
			$id_pocty = (int) $data['id_pocty'];
			$id_vzorec = (int) $data['id_vzorec'];
			$id_set_sazeb_o = (int) $data['id_set_sazeb_o'];
			//recalculate costs
			$result = $item->costsCalc($id_produkt, $id_set_sazeb_o);
			if(!$result){
				$this->flashMessage('Náklady nebyly aktualizovány. Přiřaďte produkt nabídce.','warning');
			} else {
				//calculate prices
				$res = $item->pricesCalc($id_nabidka, $id_produkt, $id_set_sazeb, $id_meny, $id_pocty, $id_vzorec);
				if($res){
					$rins = $res['r_ins'];
					$rupd = $res['r_upd'];
					//nějaký FAKE - hodnoty se z uložené procedury vracejí obráceně - UPD namísto INS???
					$this->flashMessage("Náklady i ceny byly úspěšně aktualizovány (upd/ins = $rins/$rupd).");
				} else {
					$this->flashMessage("Náklady i ceny zřejmě nebyly správně zaktualizovány, pokuste se akci zopakovat.","exclamation");
				}
			}
			$this->redirect('detail', $id_produkt);
		} else {
			$this->flashMessage("Náklady i ceny nebyly zaktualizovány, nepodařilo se získat data.","exclamation");
		}
		$this->redirect('detail', $this->getIdFromMySet(4));
	}

	/**
	 * Delete prices by params
	 * @param type $id
	 */
	public function renderErasePrices($id, $id_cena)
	{
		if(!$this->isMySet(3)){
			//nelze aktualizovat ceny, není vybrána nabídka
			$this->flashMessage('Ceny nelze měnit, není aktivována žádná nabídka.','exclamation');
			$this->redirect('detail', $id);
		}
		$id_nabidka = $this->getIdFromMySet(3);
		$item = new Produkt;
		$item->pricesErase($id_cena);
		$item->assign2offer($id, $id_nabidka);
		$this->flashMessage('Zvolné ceny byly odstraněny.');
		$this->redirect('detail', $id);

	}

	/**
	 * Change status of product by dialog
	 * @return void
	 */
	public function renderChngStatus($idp)
	{
		$prod = new Produkt;
		$item = $prod->find($idp)->fetch();
		if (!$item) {
			throw new NA\BadRequestException('Záznam nenalezen.');
		}
		$this->template->item = $item;
		$this->template->titul = "Změna stavu produktu";
	}
	
	/**
	 * Change status of product by id_stav
	 * @param int id = id_produkty
	 * @param int $status = id_stav
	 * @return void
	 */	
	public function actionChangeStatus($idp, $status)
	{
		$prod = new Produkt;
		$prod->insertProductStatus($idp, $status, $this->user->id);
		$this->flashMessage('Stav produktu byl změněn.');
		$this->redirect('detail', $idp);

	}

	/**
	 * Delete status of product
	 * @param type $id = id_produkt
	 * @param type $status
	 * @param type $id_user 
	 */
	public function actionEraseStatus($id, $status, $id_user)
	{
		$prod = new Produkt;
		$prod->deleteProductStatus($id, $status, $id_user);
		$this->flashMessage('Stav produktu byl zrušen.');
		$this->redirect('detail', $id);

	}

	/**
	 * Odemknutí produktu - potvrzené
	 * @param type $id
	 * @param type $status 
	 */
	public function actionUnlock($id, $status)
	{
		$prod = new Produkt;
		$prod->insertProductStatus($id, $status, $this->user->id);
		$this->flashMessage('Produkt byl odpotvrzen (odemčen).');
		$this->goBack();

	}

	/**
	 * Uzamknutí produktu - potvrdit
	 * @param type $id
	 * @param type $status 
	 */
	public function actionLock($id, $status)
	{
		$prod = new Produkt;
		$prod->insertProductStatus($id, $status, $this->user->id);
		$this->flashMessage('Produkt byl potvrzen (uzamčen).');
		$this->goBack();

	}

	/**
	 * Delete status of product
	 * @param type $id = id_produkt, $id_cena
	 * @param type $id_user 
	 */
	public function actionPriceActivate($id, $id_cena)
	{
		$id_nabidky = $this->getIdFromMySet(3);
		if ($id_nabidky > 0){
			$prod = new Produkt;
			$prod->activateProductPrice($id, $id_nabidky, $id_cena);
			$this->redirect('detail', $id);
		} else {
			$this->flashMessage('Nabídka neexistuje, nebo produkt není přiřazen k nabídce.','exclamation');
		}
	}	
	
	/**
	 * Copy offer
	 * @param int id = id_produkt
	 * @return void
	 * @throws BadRequestException
	 */	
	public function actionCopyProdukt($id)
	{
		$item = new Produkt;
		$this->template->item = $item->find($id)->fetch();
		if (!$this->template->item) {
			throw new Nette\Application\BadRequestException('Záznam nenalezen!');
		}
		$this->template->titul = "Kopie produktu";

	}		

	public function renderEditPricen($id)
	{
		if(!$this->isMySet(3)){
			//nelze aktualizovat ceny, není vybrána nabídka
			$this->flashMessage('Ceny nelze měnit, není aktivována žádná nabídka.','exclamation');
			$this->redirect('default');
		}
		
		$item = new Produkt;
        $row = $item->getPriceNab($id)->fetch();
		$form = $this['pricenForm'];
		if (!$form->isSubmitted()) {
			
			if (!$row) {
				throw new NA\BadRequestException('Záznam nenalezen.');
			}
			$form->setDefaults($row);
		} 
		$this->template->titul = "Změna nabídkové ceny v ".$row['mena'];
	}	

	
	/*
	public function renderEditPricen($id_nabidky, $id_produkty, $id_meny, $id_pocty)
	{
		if(!$this->isMySet(3)){
			//nelze aktualizovat ceny, není vybrána nabídka
			$this->flashMessage('Ceny nelze měnit, není aktivována žádná nabídka.','exclamation');
			$this->redirect('detail', $id_produkty);
		}
		
		$item = new Produkt;
        $row = $item->getPriceNab($id_nabidky, $id_produkty, $id_meny, $id_pocty)->fetch();
		$form = $this['pricenForm'];
		if (!$form->isSubmitted()) {
			
			if (!$row) {
				throw new NA\BadRequestException('Záznam nenalezen.');
			}
			$form->setDefaults($row);
		} 
		$this->template->titul = "Změna nabídkové ceny v ".$row['mena'];
	}
	 * 
	 */	
	
	
	
	/********************* component factories *********************/



	/**
	 * Item edit form component factory.
	 * @return mixed
	 */
	protected function createComponentItemForm()
	{
		$form = new Form;
		
		$comp = new Model;
		$firma= $comp->getCompany();
		$form->addSelect('id_firmy', 'Firma:', $firma)
			        ->setPrompt('[..zvolte firmu..]')
			        ->addRule(Form::FILLED, 'Zvol firmu');
		$form->addText('id_k2', 'K2 číslo:', 10);
		$form->addText('zkratka', 'Zkratka:')
				->setRequired('Uveďte zkratku produktu.');
		
		$form->addText('nazev', 'Název:')
				->setRequired('Uveďte název produktu.');

		$form->addTextArea('popis', 'Popis:');
		
		$form->addSubmit('save', 'Uložit')->setAttribute('class', 'default');
		$form->addSubmit('cancel', 'Storno')->setValidationScope(NULL);
		$form->onSuccess[] = callback($this, 'itemFormSubmitted');

		$form->addProtection(self::MESS_PROTECT);
		return $form;
	}


	/**
	 * Submit item Form
	 * @param Form $form 
	 */
	public function itemFormSubmitted(Form $form)
	{
		if ($form['save']->isSubmittedBy()) {
			$id = (int) $this->getParam('id');
			$item = new Produkt;
			if ($id > 0) {
				$item->update($id, $form->values);
				$this->flashMessage('Produkt byl změněn.');
			} else {
				$idp = $item->insert($form->values);
				$idn = $this->getParam('idn');
				if($idp>0){
					$this->flashMessage('Produkt byl přidán.');
					if($idn>0){
						$item->assign2offer($idp, $idn);
						$nab = new Nabidka;
						$nab->insertStatus($idn, self::stINPROGRESS, $this->user->id);
						$this->redirect('Nabidka:detail',$idn);
					}
				}
			}
		}
		$this->redirect('default');
	}

	/**
	 * Item delete form component factory.
	 * @return mixed
	 */
	protected function createComponentDeleteForm()
	{
		$form = new Form;
		$form->addSubmit('delete', 'Smazat')->setAttribute('class', 'default');
		$form->addSubmit('cancel', 'Storno');
		$form->onSuccess[] = callback($this, 'deleteFormSubmitted');
		$form->addProtection(self::MESS_PROTECT);
		return $form;
	}


	/**
	 * Submit delete Form
	 * @param Form $form 
	 */
	public function deleteFormSubmitted(Form $form)
	{
		if ($form['delete']->isSubmittedBy()) {
	        $instance = new Produkt;
			$id = $this->getParam('id');
			$instance->delete($id);
			$this->flashMessage("Produkt [ $id ] byl vč. materiálového kusovníku a TPV smazán.");
		}

		$this->redirect('default');
	}

	/**
	 * Assign edit form component factory.
	 * @return mixed
	 */
	protected function createComponentAssignForm()
	{
		$form = new Form;
		$form->addSubmit('assign', 'Ano')->setAttribute('class', 'default');
		$form->addSubmit('cancel', 'Ne');
		$form->onSuccess[] = callback($this, 'assignFormSubmitted');
		$form->addProtection(self::MESS_PROTECT);
		return $form;
	}


	/**
	 * Submit Assign Form
	 * @param Form $form 
	 */
	public function assignFormSubmitted(Form $form)
	{
		if ($form['assign']->isSubmittedBy()) {
			$idn = $this->getIdFromMySet(3);
			if($idn>0){
				$instance = new Produkt;
				$instance->assign2offer($this->getParam('id'), $idn);
				$nab = new Nabidka;
				$nab->insertStatus($idn, self::stINPROGRESS, $this->user->id);
				$this->flashMessage('Produkt byl přiřazen.');
			} else {
				$this->flashMessage('Přiřazení produktu se nezdařilo, není aktivní žádná nabídka.','exclamation');
			}
		}

		$this->redirect('detail',$this->getParam('id'));
	}

	/**
	 * Assign edit form component factory.
	 * @return mixed
	 */
	protected function createComponentEraseForm()
	{
		$form = new Form;
		$form->addSubmit('erase', 'Ano')->setAttribute('class', 'default');
		$form->addSubmit('cancel', 'Ne');
		$form->onSuccess[] = callback($this, 'eraseFormSubmitted');
		$form->addProtection(self::MESS_PROTECT);
		return $form;
	}


	/**
	 * Submit Unassign Form
	 * @param Form $form 
	 */
	public function eraseFormSubmitted(Form $form)
	{
		if ($form['erase']->isSubmittedBy()) {
	        $instance = new Produkt;
			$instance->remove4offer($this->getParam('id'), $this->getParam('idn'));
			$this->flashMessage('Bylo zrušeno přiřazení produktu k nabídce.');
		}

		$this->redirect('detail',$this->getParam('idp'));
	}

	/********************* amount component factories *********************/



	/**
	 * amount edit form component factory.
	 * @return mixed
	 */
	protected function createComponentAmountForm()
	{
		$form = new Form;

		$form->addText('vyrobni_davka', 'Výrobní dávka:')
				->setType('number');
		$form->addText('mnozstvi', 'Množství:')
				->setType('number');
		$form->addHidden('id_produkty');


		$form->addSubmit('save', 'Uložit')->setAttribute('class', 'default');
		$form->addSubmit('cancel', 'Storno')->setValidationScope(NULL);
		$form->onSuccess[] = callback($this, 'amountFormSubmitted');

		$form->addProtection(self::MESS_PROTECT);
		return $form;
	}


	/**
	 * Submit amount Form
	 * @param Form $form 
	 */
	public function amountFormSubmitted(Form $form)
	{
		if ($form['save']->isSubmittedBy()) {
			$id = (int) $this->getParam('id');
			$idp = (int) $this->getParam('idp');
			$data = $form->values;
			$id_nabidky = $this->getIdFromMySet(3);
			$data['id_nabidky'] = $id_nabidky;
			/*
			dump($id,$idp,$data);
			exit;
			 * 
			 */
			$amount = new Pocet;
			if ($id > 0) {
				$amount->update($id, $data);
				$this->flashMessage('Položka byla změněna.');
			} else {
				//$data['id_produkty'] = $this->getIdFromMySet(4);//$idp;
				$amount->insert($data);
				$this->flashMessage('Položka byl přidána.');
			}
		}

		$this->redirect('detail', $this->getParam('idp'));
	}



	/**
	 * delete form component factory.
	 * @return mixed
	 */
	protected function createComponentDeleteAmount()
	{
		$form = new Form;
		$form->addSubmit('delete', 'Smazat')->setAttribute('class', 'default');
		$form->addSubmit('cancel', 'Storno');
		$form->onSuccess[] = callback($this, 'deleteAmountSubmitted');
		$form->addProtection(self::MESS_PROTECT);
		return $form;
	}


	/**
	 * Submit amount Form
	 * @param Form $form 
	 */
	public function deleteAmountSubmitted(Form $form)
	{
		if ($form['delete']->isSubmittedBy()) {
			$item = new Pocet;
			$item->delete($this->getParam('id'));
			$this->flashMessage('Smazáno.');
		}

		$this->redirect('detail',$this->getParam('idp'));
	}	
	
	/* ------------------- Costs factories ------------------------------*/
	
	/**
	 * Assign confirm update costs form component factory.
	 * @return mixed
	 */
	protected function createComponentCostsUpdForm2()
	{
		$form = new Form;
		$form->addSubmit('costcalc', 'Ano')->setAttribute('class', 'default');
		$form->addSubmit('cancel', 'Ne');
		$form->onSuccess[] = callback($this, 'costsUpdForm2Submitted');
		$form->addProtection(self::MESS_PROTECT);
		return $form;
	}


	/**
	 * Submit Costs Update Form
	 * @param Form $form 
	 */
	public function costsUpdForm2Submitted(Form $form)
	{
		if ($form['costcalc']->isSubmittedBy()) {
	        $instance = new Produkt;
			$idp = $this->getParam('id');
			$item = $instance->find($idp)->fetch();
			$result = $instance->costsCalc($idp, $item->idsso);
			if(!$result){
				$this->flashMessage('Náklady nebyly aktualizovány. Přiřaďte produkt nabídce.','warning');
			} else {
				$this->flashMessage('Náklady byly úspěšně aktualizovány. Aktualizujte i ceny.');
			}
		}

		$this->redirect('detail', $this->getParam('id'));
	}

	/* ------------------- Prices factories ------------------------------*/
	
	/**
	 * Assign confirm update prices form component factory.
	 * @return mixed
	 */
	protected function createComponentPricesUpdForm()
	{
		$form = new Form;
		$model = new Model;
		$meny = $model->getCurrencyRates();
		$davky = $model->getBatches($this->getIdFromMySet(3), $this->getParam('id'));
		$vzorce = $model->getCalculs();
		$form->addSelect('id_meny', 'Měna [kurz]:', $meny)
			//        ->setPrompt('zvolte měnu')
			        ->addRule(Form::FILLED, 'Zvolte měnu, kurz je poslední zadaný.');
		$form->addSelect('id_pocty', 'Výrobní dávka:', $davky);
		$form->addSelect('vzorec', 'Kalkulační vzorec:', $vzorce);
		$form->addSubmit('pricecalc', 'Vypočítat')->setAttribute('class', 'default');
		$form->addSubmit('cancel', 'Storno');
		$form->onSuccess[] = callback($this, 'pricesUpdFormSubmitted');
		$form->addProtection(self::MESS_PROTECT);
		return $form;
	}


	/**
	 * Submit Prices Update Form
	 * @param Form $form 
	 */
	public function pricesUpdFormSubmitted(Form $form)
	{
		if ($form['pricecalc']->isSubmittedBy()) {
	        $instance = new Produkt;
			$data = (array) $form->values;
			$idp = (int) $this->getParam('id');
			$item = $instance->find($idp)->fetch();
			$id_meny = (int) $data['id_meny'];
			$id_pocty = (int) $data['id_pocty'];
			$vzorec = (int) $data['vzorec'];
			//recalculate costs
			$result = $instance->costsCalc($idp, $item->idsso);
			if(!$result){
				$this->flashMessage('Náklady nebyly aktualizovány. Přiřaďte produkt nabídce.','warning');
			} else {
				//calculate prices
				$res = $instance->pricesCalc($item->idn, $idp, $item->idss, $id_meny, $id_pocty, $vzorec);
				if($res){
					$rins = $res['r_ins'];
					$rupd = $res['r_upd'];
					//nějaký FAKE - hodnoty se vracejí obráceně - UPD namísto INS???
					$this->flashMessage("Náklady i ceny byly úspěšně aktualizovány (upd/ins = $rins/$rupd).");
				} else {
					$this->flashMessage("Náklady i ceny zřejmě nebyly správně zaktualizovány.","exclamation");
				}
			}
		}

		$this->redirect('detail', $this->getParam('id'));
	}
	

	/**
	 * price nab edit form component factory.
	 * @return mixed
	 */
	protected function createComponentPricenForm()
	{
		$form = new Form;
		$item = new Produkt;
		$row = $item->getPriceNab($this->getParam('id'))->fetch();
		if(!$row){
			$mena = 'Kč';
		} else {
			$mena = $row['mena'];
		}
		$form->addText('hodnota_cm', 'Nabídková cena/ks',40)
				->setAttribute('class', 'cislo')
				->setOption('description', $mena)
				->addFilter(array('Nette\Forms\Controls\TextBase', 'filterFloat'))
					->controlPrototype
						->autocomplete('off')
				->addCondition($form::FILLED)
						->addRule($form::FLOAT, 'Hodnota musí být celé nebo reálné číslo.');

		$form->addHidden('kurz');
		$form->addHidden('tid');

		$form->addSubmit('save', 'Uložit')->setAttribute('class', 'default');
		$form->addSubmit('cancel', 'Storno')->setValidationScope(NULL);
		$form->onSuccess[] = callback($this, 'pricenFormSubmitted');

		$form->addProtection(self::MESS_PROTECT);
		return $form;
	}


	/**
	 * Submit pricen Form
	 * @param Form $form 
	 */
	public function pricenFormSubmitted(Form $form)
	{
		if ($form['save']->isSubmittedBy()) {
			$idc = (int) $this->getParam('id');
			$data = $form->values;
			$price = new Produkt;
			$tid = $data['tid'];
			$hodncm = $data['hodnota_cm'];
			$hodn = $hodncm * $data['kurz'];
			if ($idc > 0 && $hodn > 0) {
				$price->updPriceNab($idc, $tid, $hodn, $hodncm);
				$this->flashMessage('Nabídková cena byla změněna.');
			}
		}

		$this->redirect('detail', $this->getIdFromMySet(4));
	}

	/*
	public function pricenFormSubmitted(Form $form)
	{
		if ($form['save']->isSubmittedBy()) {
			$idn = (int) $this->getParam('id_nabidky');
			$idp = (int) $this->getParam('id_produkty');
			$idm = (int) $this->getParam('id_meny');
			$ida = (int) $this->getParam('id_pocty');
			$data = $form->values;
			$price = new Produkt;
			$tid = $data['tid'];
			$hodncm = $data['hodnota_cm'];
			$hodn = $hodncm * $data['kurz'];
			if ($idn > 0 && $idp > 0 && $idm > 0 && $ida > 0 && $hodn > 0) {
				$price->updPriceNab($idn, $idp, $idm, $ida, $tid, $hodn, $hodncm);
				$this->flashMessage('Nabídková cena byla změněna.');
			}
		}

		$this->redirect('detail', $this->getParam('id_produkty'));
	}
	 * 
	 */

	
	
	/**
	 * Item delete form component factory.
	 * @return mixed
	 */
	protected function createComponentChangeStatusForm()
	{
		$form = new Form;
		$role = $this->user->getRoles();
		$model= new Model;
		$stavy= $model->getStatus($role[0]);
		$form->addSelect('id_stav', 'Stav produktu:', $stavy)
			        ->setPrompt('[..vyberte nový stav produktu..]')
			        ->addRule(Form::FILLED, 'Vyberte stav.');
		$form->addSubmit('change', 'Nastavit')->setAttribute('class', 'default');
		$form->addSubmit('cancel', 'Storno')->setValidationScope(NULL);
		$form->onSuccess[] = callback($this, 'chngstatFormSubmitted');
		$form->addProtection(self::MESS_PROTECT);
		return $form;
	}


	/**
	 * Submit Change Status Form
	 * @param Form $form 
	 */
	public function chngstatFormSubmitted(Form $form)
	{
		if ($form['change']->isSubmittedBy()) {
			$id = $this->getParam('id');
			$stav = (array) $form->values;
			if($id>0){
		        $nab = new Produkt;
				$nab->insertProductStatus($id, $stav['id_stav'], $this->user->id);
				$this->redirect('Produkt:detail',$id);
			}
			$this->flashMessage('Status byl změněn.');
		}

		$this->redirect('default');
	}	
	
	/**
	 * Confirm copy product
	 * @return mixed
	 */
	protected function createComponentCopyProdForm()
	{
		$form = new Form;
		$form->addSubmit('copyprod', 'Ano')->setAttribute('class', 'default');
		$form->addSubmit('cancel', 'Ne');
		$form->onSuccess[] = callback($this, 'copyProdFormSubmitted');
		$form->addProtection(self::MESS_PROTECT);
		return $form;
	}


	/**
	 * Submit Copy Product Form Submited
	 * @param Form $form 
	 */
	public function copyProdFormSubmitted(Form $form)
	{
		if ($form['copyprod']->isSubmittedBy()) {
	        $instance = new Produkt;
			$id = $this->getParam('id');
			$item = $instance->find($id)->fetch();
			$result = $instance->copyProdukt($id, $this->user->id);
			if(!$result || $result==0){
				$this->flashMessage('Zkopírování produktu bylo neúspěšné.','warning');
			} else {
				$this->flashMessage("Produkt byl zkopírován pod novým číslem $result. Aktualizujte náklady a ceny nového produktu.");
				$this->redirect('detail', $result);
			}
		}

		$this->redirect('detail', $this->getParam('id'));
	}		
	
	
	
}