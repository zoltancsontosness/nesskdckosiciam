<?php

namespace Karpatska\FormBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;

class CompanyRegisterType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('ico','text', array(
                'required' => true,
                'max_length' => '8',
                'attr' => array('class' => 'form-control input-lg', 'placeholder' => 'IČO')
            ))
            ->add('address','text', array(
                'required' => true,
                'attr' => array('class' => 'form-control input-lg', 'placeholder' => 'Ulica a číslo')
            ))
            ->add('county','text', array(
                'required' => true,
                'attr' => array('class' => 'form-control input-lg', 'placeholder' => 'Okres')
            ))
            ->add('region','choice', array(
                'required' => true,
                'placeholder' => 'Vyberte kraj...',
                'choices'   => array('Košický' => 'Košický', 'Prešovský' => 'Prešovský'),
                'expanded' => false,
                'multiple' => false,
                'attr' => array('class' => 'form-control input-lg')
            ))
            ->add('type','text', array(
                'required' => true,
                'attr' => array('class' => 'form-control input-lg', 'placeholder' => 'Typ organizácie')
            ))
            ->add('bankName','text', array(
                'required' => true,
                'attr' => array('class' => 'form-control input-lg', 'placeholder' => 'Meno banky')
            ))
            ->add('bankAddress','text', array(
                'required' => true,
                'attr' => array('class' => 'form-control input-lg', 'placeholder' => 'Adresa banky')
            ))
            ->add('accountNum','text', array(
                'required' => true,
                'attr' => array('class' => 'form-control input-lg', 'placeholder' => 'IBAN')
            ))
            ->add('reprName','text', array(
                'required' => true,
                'attr' => array('class' => 'form-control input-lg', 'placeholder' => 'Meno a priezvisko zástupcu')
            ))
            ->add('reprEmail','text', array(
                'required' => true,
                'attr' => array('class' => 'form-control input-lg', 'placeholder' => 'E-mail zástupcu')
            ))
            ->add('reprPhone','text', array(
                'required' => true,
                'max_length' => '13',
                'attr' => array('class' => 'form-control input-lg', 'placeholder' => 'Telef. č. zástupcu')
            ))
            ->add('dic','text', array(
                'required' => true,
                'max_length' => '10',
                'attr' => array('class' => 'form-control input-lg', 'placeholder' => 'DIČ')
            ))
            ->add('password', 'repeated', array(
                'type' => 'password',
                'invalid_message' => 'Heslá sa musia zhodovať!',
                'options' => array('attr' => array('class' => 'form-control input-lg', 'placeholder' => 'Heslo')),
                'required' => true,
                'first_options'  => array('label' => NULL),
                'second_options' => array('label' => NULL)
            ));
    }

    public function getName()
    {
        return 'karpatska_form_bundle_company_register';
    }
}