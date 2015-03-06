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
                'required' => true
            ))
            ->add('address','text', array(
                'required' => true
            ))
            ->add('county','text', array(
                'required' => true
            ))
            ->add('region','text', array(
                'required' => true
            ))
            ->add('type','text', array(
                'required' => true
            ))
            ->add('bankName','text', array(
                'required' => true
            ))
            ->add('bankAddress','text', array(
                'required' => true
            ))
            ->add('accountNum','text', array(
                'required' => true
            ))
            ->add('reprName','text', array(
                'required' => true
            ))
            ->add('reprEmail','text', array(
                'required' => true
            ))
            ->add('dic','text', array(
                'required' => true
            ))
            ->add('password', 'repeated', array(
                'type' => 'password',
                'invalid_message' => 'The password fields must match.',
                'options' => array('attr' => array('class' => 'password-field')),
                'required' => true,
                'first_options'  => array('label' => 'Heslo'),
                'second_options' => array('label' => 'Znovu heslo')
            ))
            ->add('save', 'submit');
    }

    public function getName()
    {
        return 'karpatska_form_bundle_company_register';
    }
}