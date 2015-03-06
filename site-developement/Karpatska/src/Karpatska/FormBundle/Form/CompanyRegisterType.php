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
                'attr' => array('class' => 'form-control input-lg input-error', 'placeholder' => 'IČO')
            ))
            ->add('address','text', array(
                'required' => true,
                'attr' => array('class' => 'form-control input-lg input-error', 'placeholder' => 'Ulica a číslo')
            ))
            ->add('county','text', array(
                'required' => true,
                'attr' => array('class' => 'form-control input-lg', 'placeholder' => 'Okres')
            ))
            ->add('region','text', array(
                'required' => true,
                'attr' => array('class' => 'form-control input-lg input-error', 'placeholder' => 'Kraj')
            ))
            ->add('type','text', array(
                'required' => true,
                'attr' => array('class' => 'form-control input-lg', 'placeholder' => 'Typ firmy')
            ))
            ->add('bankName','text', array(
                'required' => true,
                'attr' => array('class' => 'form-control input-lg', 'placeholder' => 'Meno banky')
            ))
            ->add('bankAddress','text', array(
                'required' => true,
                'attr' => array('class' => 'form-control input-lg input-error', 'placeholder' => 'Adresa banky')
            ))
            ->add('accountNum','text', array(
                'required' => true,
                'attr' => array('class' => 'form-control input-lg', 'placeholder' => 'Číslo účtu')
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
                'attr' => array('class' => 'form-control input-lg', 'placeholder' => 'Telef. č. zástupcu')
            ))
            ->add('dic','text', array(
                'required' => true,
                'attr' => array('class' => 'form-control input-lg input-error', 'placeholder' => 'DIČ')
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