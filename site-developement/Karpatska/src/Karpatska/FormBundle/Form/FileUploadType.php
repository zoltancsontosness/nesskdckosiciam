<?php

namespace Karpatska\FormBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;

class FileUploadType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('file_1', 'file', array(
            'required' => true,
        ))
            ->add('file_2', 'file', array(
                'required' => true,
            ))
            ->add('file_3', 'file', array(
                'required' => true,
            ))
            ->add('file_4', 'file', array(
                'required' => true,
            ))
            ->add('file_5', 'file', array(
                'required' => true,
            ))
        ;
    }

    public function getName()
    {
        return 'karpatska_form_bundle_file_upload';
    }
}