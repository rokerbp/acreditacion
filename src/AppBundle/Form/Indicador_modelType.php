<?php

namespace AppBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Doctrine\ORM\EntityRepository;

class Indicador_modelType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder->add('nombre', TextType::class,
                    [
                        'label'=>'Nombre del indicador'
                    ])
                ->add('descripcion', TextareaType::class, 
                    [
                        'required'=>false,
                        'attr' => array('cols' => '60', 'rows' => '3'),
                        'label'=>'Descripción (Si la tiene)'
                    ])
                ->add('caracteristica_model', EntityType::class,
                    [
                        'class'=>'AppBundle:Caracteristica_model',
                        'group_by' => 'factor_model',
                        'choice_label'=>'nombre',
                        'label'=>'Característica a la que pertenece',
                        'placeholder'=>'Seleccione una Característica'
                    ]);
    }/**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'AppBundle\Entity\Indicador_model'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'appbundle_indicador_model';
    }


}
